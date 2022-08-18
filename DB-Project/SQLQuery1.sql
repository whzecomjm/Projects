--��ͼ�Ĵ���
--��ѯ��ͼ
create view cx(bookname,typese,author,position,states)
as
select bookname,typeId,author,position,states
from books
with check option

--��ѯ���߽����鼮��ͼ
create view dzjy(name,department,cardid,bookname,bookid,typese,borrowdate)
as
select reader.name,reader.department,reader.cardid ,
books .bookname ,books.bookid ,books .typeId ,borrowdate
from reader,books ,borrow 
with check option

--�����鼮��ͼ
create view jy(bookid,bookname,borrowdate)
as
select books .bookname,books.bookid ,borrow .borrowdate 
from books ,borrow 
with check option

--���ı����ͼ
create view jybh(borrowid)
as
select borrow .borrowid 
from borrow 
with check option

--��������ͼ
create view hsbh(returnid)
as
select returnrecord.returnid  
from returnRecord  
with check option

--�����鼮�Ĵ�����
USE [library]
GO

create trigger T4
		ON borrow
			after insert
		as
			begin	
			declare @bookNum char(20),@readersno char(10),@lendtotal int,@borrowdate datetime
			SELECT  @bookNum=bookid,@readersno=cardid,@borrowdate=borrowdate 
            from inserted
			select  @lendtotal=max(total) 
            from borrow  
            where  cardid=@readersno
			update books 
			set states=1 
			where bookid=@bookNum
			update borrow
		    set shouldreturndate=dateadd(m,2,shouldreturndate)
			update borrow 
			set  total=@lendtotal+1 where cardid=@readersno
		end
		
--�����¼������

create trigger T5
		on returnrecord
   after insert
   as
	begin 
		declare @bookNum char(20),@readersno char(10),@lendtotal int
		select @bookNum=bookid,@readersno=cardid from inserted
		select @lendtotal=max(total) from borrow where cardid=@readersno
		update books set states=0 where bookid=@bookNum
		update borrow set total=@lendtotal-1 where cardid=@readersno
	end
	
--�����û��Ĵ���

CREATE LOGIN user1 WITH PASSWORD='111'
USE  library  
CREATE USER sss1 FOR LOGIN user1 


CREATE LOGIN user2 WITH PASSWORD='222'
USE  library  
CREATE USER sss2 FOR LOGIN user2


CREATE LOGIN user3 WITH PASSWORD='333'
USE  library  
CREATE USER sss3 FOR LOGIN user3