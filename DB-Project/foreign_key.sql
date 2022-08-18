alter table borrow
add constraint borrow_fk1
foreign key(bookId) references books(bookId)

alter table borrow
add constraint borrow_fk2
foreign key(cardId) references reader(cardId)

alter table fineRecord
add constraint fine_fk1
foreign key(bookId) references books(bookId)

alter table fineRecord
add constraint fine_fk2
foreign key(cardId) references reader(cardId)

alter table returnRecord
add constraint return_fk1
foreign key(bookId) references books(bookId)

alter table returnRecord
add constraint return_fk2
foreign key(cardId) references reader(cardId)

alter table books
add constraint book_fk
foreign key(typeId) references types(typeId)