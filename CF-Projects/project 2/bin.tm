<TeXmacs|1.99.1>

<style|<tuple|amsart|british>>

<\body>
  <doc-data|<doc-title|Implied Volotility and Convergence order of Binomial
  Tree Methods>|<doc-author|<\author-data|<author-name|Tao Luo, Deng Pan and
  Wenchao Zhang>>
    \;
  </author-data|<\author-affiliation>
    South University of Science and Techonology of China
  </author-affiliation>>>|<doc-date|<date>>>

  \;

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1.<space|2spc>Implied
    Volatility> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1.<space|2spc>Introducing Implied Volatility
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|1.2.<space|2spc>Introducing Volatility Smile,
    Volatility Term Structure and Volatility Surface
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|1.3.<space|2spc>Data source and related data issue
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <with|par-left|1tab|1.4.<space|2spc>Code and Result
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|1.5.<space|2spc>Discussion: Explanation of Implied
    Volatility Gap <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2.<space|2spc>Convergence
    of Binomial Method for Option Valuation>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <with|par-left|1tab|2.1.<space|2spc>Introduction
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|2.2.<space|2spc>CRR, JR and Tian for European Option
    converge with order 1 <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|2.3.<space|2spc>Higher order Binomial Method for
    European Option Valuation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16>>

    <with|par-left|2tab|2.3.1.<space|2spc>Asympototic expansions
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-17>>

    <with|par-left|2tab|2.3.2.<space|2spc>Leisen-Reimer Tree
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-18>>

    <with|par-left|1tab|2.4.<space|2spc>Convergence of Ammerican Put Options
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-20>>

    <with|par-left|1tab|2.5.<space|2spc>Sawtooth and periodic humps
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-21>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3.<space|2spc>ZNJS>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-25><vspace|0.5fn>

    <with|par-left|1tab|3.1.<space|2spc>Financial report on ZNJS
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-26>>

    <with|par-left|2tab|3.1.1.<space|2spc>Four Principles in investing
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-31>>

    <with|par-left|2tab|3.1.2.<space|2spc>Comparison in the industry
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>>

    <with|par-left|2tab|3.1.3.<space|2spc>Problems
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-35>>

    <with|par-left|1tab|3.2.<space|2spc>Prediction
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-38>>

    <with|par-left|1tab|3.3.<space|2spc>Determination of the option price of
    ZNJS <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-39>>

    <with|par-left|2tab|3.3.1.<space|2spc>Evaluation
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-40>>

    <with|par-left|2tab|3.3.2.<space|2spc>Application
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-41>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4.<space|2spc><with|font|simfang|<with|font|simkai|\<#6CAA\>\<#6E2F\>\<#901A\>>>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-42><vspace|0.5fn>

    <with|par-left|1tab|4.1.<space|2spc><with|font|simkai|\<#7EC4\>\<#6210\>\<#90E8\>\<#5206\>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-43>>

    <with|par-left|1tab|4.2.<space|2spc><with|font|simkai|\<#5B9E\>\<#65BD\>\<#8303\>\<#56F4\>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-44>>

    <with|par-left|1tab|4.3.<space|2spc><with|font|simkai|\<#8BD5\>\<#70B9\>\<#6761\>\<#4EF6\>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-45>>

    <with|par-left|1tab|4.4.<space|2spc><with|font|simkai|\<#5F71\>\<#54CD\>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-46>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|List of
    figures> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-47><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Bibliography>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48><vspace|0.5fn>
  </table-of-contents>

  <new-page>

  \;

  <section|Implied Volatility>

  \;

  <subsection|Introducing Implied Volatility>

  Recall BS option pricing model, option value is a function of
  <math|<around*|(|K,S,\<sigma\>,\<tau\>,r|)>>. among these parameters,
  <math|\<sigma\>> is hard to observe, while others are easy to get. on the
  other hand, the option price <math|V>, which BS \ formula tried to explain,
  is also easy to get in the market. so we can these infomation and solve
  <math|\<sigma\>>, which is called implied volatility.

  \;

  <subsection|Introducing Volatility Smile, Volatility Term Structure and
  Volatility Surface>

  For any option traded in the market, one can use its market price and solve
  the implied volatility. Graphing implied volatilities against strike prices
  <math|K> for a given expiry yields a ``smile".<cite|volitilitysmilewiki>
  For the option with equity as underlying, this smile is skewed, which means
  only left downward sloping part appears.

  <\big-figure>
    <image|<tuple|<#4749463839619001D500F70000000000800000008000808000000080800080008080808080C0C0C0FF000000FF00FFFF000000FFFF00FF00FFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000330000660000990000CC0000FF0033000033330033660033990033CC0033FF0066000066330066660066990066CC0066FF0099000099330099660099990099CC0099FF00CC0000CC3300CC6600CC9900CCCC00CCFF00FF0000FF3300FF6600FF9900FFCC00FFFF3300003300333300663300993300CC3300FF3333003333333333663333993333CC3333FF3366003366333366663366993366CC3366FF3399003399333399663399993399CC3399FF33CC0033CC3333CC6633CC9933CCCC33CCFF33FF0033FF3333FF6633FF9933FFCC33FFFF6600006600336600666600996600CC6600FF6633006633336633666633996633CC6633FF6666006666336666666666996666CC6666FF6699006699336699666699996699CC6699FF66CC0066CC3366CC6666CC9966CCCC66CCFF66FF0066FF3366FF6666FF9966FFCC66FFFF9900009900339900669900999900CC9900FF9933009933339933669933999933CC9933FF9966009966339966669966999966CC9966FF9999009999339999669999999999CC9999FF99CC0099CC3399CC6699CC9999CCCC99CCFF99FF0099FF3399FF6699FF9999FFCC99FFFFCC0000CC0033CC0066CC0099CC00CCCC00FFCC3300CC3333CC3366CC3399CC33CCCC33FFCC6600CC6633CC6666CC6699CC66CCCC66FFCC9900CC9933CC9966CC9999CC99CCCC99FFCCCC00CCCC33CCCC66CCCC99CCCCCCCCCCFFCCFF00CCFF33CCFF66CCFF99CCFFCCCCFFFFFF0000FF0033FF0066FF0099FF00CCFF00FFFF3300FF3333FF3366FF3399FF33CCFF33FFFF6600FF6633FF6666FF6699FF66CCFF66FFFF9900FF9933FF9966FF9999FF99CCFF99FFFFCC00FFCC33FFCC66FFCC99FFCCCCFFCCFFFFFF00FFFF33FFFF66FFFF99FFFFCCFFFFFF21F90401000010002C000000009001D5000008FF00FF091C48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8B1A3C78F20438A1C49B2A4C9932853AA5CC9B2A5CB973063CA9C49B3A6CD9B3873EADCC9B3A7CF9F40830A1D4AB4A8D1A348932A5DCAB4A9D3A750A34A9D4AB5AAD5AB58B36ADDCAB56B50145EB7820D4BB6E2D8B256CFA25DDB502DDBA86EDFCA2D18772ED3BA76E5E2CD8B742F5FB47EFF120D2CD82BE1C2400F23D6AA7831CFC68ED346EE3B792DE4CA362F6386AA79B3CCCE9EEF86160A7A74D2D2A657A24E5D7435EB93AE5F7F95FD98F6D5D8B643E2CEBD7337EF8EBE7FDF0C2E3C23F1E2338F2337BBFCA9F2E6129F4367297DBAC3EAD65162CFAE703B7792DEBF1BFF0C2F1E24F9F202CFA3E7A8BE7CFBF5C6E1C3964F9A7EC9F7F629E2E7BE3F7FC4FED601E8DF7503EA56606D077A246082092DD89C830C8E172143282806E184035DE859858169F85D851079181A877589F82188146248218AE949A8226C1C36F822422C12149789FCD588178EB6F1085D8D19D238E3453E1658A4606EED75A47F4BDA45E293320EF951920B3599576356E6F62489554AC99C97C0FD07E6585B2A09E64B598E78667CFF94D9E59A21C249DD98650269A39CAA2978609AB2D569275D5336C5E7419D0DFADA7186128A13995B46191D9E5FEAA954A2804E44A965E935DA9D794B5D1AA47E905A6A2065087EAA28A8A18AC929A939F9E9A8A87852FFB9E9A8ADF984259170BA3A2BADF539E59AA7645D865D9A566A7A2AAEA9A608DE6C89B5E8176E7FBE68AC90CB366B2D99AF62146D84D812E6DD925962DB66B66CCE286E87F395CAECB6E32A08EC6D2DB64BAE483CBE4BED94F652C5A8B2300E97EFB1E6FD5B567B17F2E9A799E0B13BE47B0E0A7CEF7D0A07A8EBBC2609E8F0C3305E5CD57E11EB062C941457DC3193308DBC91C93DC90A704B31BAC7E59B256F87B2AD95AE8CE6CB3FD68CF1CD1E73A6F3CF34E12C9CCA3BC7BC5BCB7009ED626F48F708F4D39FCD6CA3D453150B326B57879C5CD67471CD99B047B9B95CB875766572BED33A59A89C1D6BDCE6C196811D2BBA861DAC74D20FB9CD18C248DAFF3D716287E97D1BDDC91249F8996D176E51E288DFAA78748E4B39B3E07DABFA38D497770D6BE6A6721EA6E7F182CE9EE8F2925EAEE794D396FAC0A69F4CFAEA87BEDEBA46B087557B6AB79B3DFBE99CE73E9AEF62EDAEADECC22F4E7CF1A8820EFC86C723FFA8E8CB6F163D56D35756BD64CE6F8E7AF6DAF7CEFDF3CA7F6FF9F6E2E7DD7CF930938F3EBFEAAFBF6BFBEE17FDF8F591D1AF6FFCE97B8FBFD6C9DABF98FF5201606104E8B3FDC94F7104FC4B027D65401AF9ED81108CA0042748C10A5AB06C01BBA00637C8C10E7A106E0D0CA1084748C2129AF084284CA10A57C8C216BAD0315EAB94B062B840F6DC4D86FFA1A1B470C8BFA5852E3BB27AD6F8FF4A27391E1E106335E455BB8418A73B218E5028028B14437796A6756E89E3AAA28EA836971245318B54CCD09F8208C64CA9C58AE8B1A216E3252E79DD4886E7FA54157107A43562D18D5724E2BEEEC8C724A68445736463E90239359C05F28D3F340D204DD52D2712F16D8694E3D2FCA892361E728B68DC9124BB86464586918D98B4932605C9492E3ACD89848C6322A176481F7A12958C24E5231D59B336E6713D64FCA425F338CA3E7E524DB0D4E52F11394961AE523C57FBA22CB558A27B31B3905833E42EF168469B0D13932FCCA636B7C9CD6E7AF39BE00CA738C749CE729AF39CE84CA73AD7999D544CA142A9A046A606E2073FC8B3517E38CB3BA790FF213FAC0944284A453E51900A313EF36DF32C6514A548C98F50A38AFE44E83F528102794A74201495E7432BA45182FE93A113ADE83F1E1A510E7574A1099DDA78408A4C2F86B4A02915C8434F2AD299AE291505C5E945A736058DBE738FA28C8B4E752A9E7CDAB36B245529411E9AD38A7A34A3A932EA4A05FA0F3F5014A8376A684A368A82A3666AA0168564CB4094CF36F9D39407E26A3CC5F8D0365D35A141BD217AA8715591BEADA776DDA94032FA5429C2345903B52B479DBA51B8663542D4C8273FDF76CFC5EA35A4F96C6A641F97D8AECEB3AB2C45A9E626A459A83E1692060D2B02F72555CD06F540F9EC284C0159D2B87035B4801D8B4D116A53D3FF1EF64057B5AA1831CA289CBD33A255456B5AAF3A85BF8288A9125DE8CBD2C6CEE63AF7B9D08DAE74A74BDDEA5AF7BAD8CDAE76B7CBDDEE7AF7BBE00DAF78C74BDEF29AF7BCE84DAF7AD7CBDEF6BAF7BDF08DAF7CE74BDFFADAF7BEFF13AE2B69D91DA44913909D3C229A8E494E428E84989D9B6290CE384802B9EEC1EB249A12677927065B98BF3D6C22ED9AABA4452E52900A4668B77ABBA90B2F18C3D4CAAC1CB109DA6A3AEB8C5BEC63B49AE6DFE46A9531CE84AB2E55695A029FF8C7A03C9B8EE7D8CA65AED8C84B54E5238B9C641DC7AF97D32C2335996C4B1799D859283E552BA7494C2A1B938FBC2C263529CC3D280F73CC5CDEE4B1AE2C653D8A528598BD05702AD51CE7349B11C15F3630FA72E94B2CE7F9CB3A637388C96CC446123ACA7676A492F13CE558E26FCEA0FC218349A94C305F51D00D6ECB99FF8C66277BF98E6F4632A41F5D470F132D950ABEA442E36C50663A6ED42D76F1456BCCE23B5331D5D034A8A3093DC25EB24F77EEF5F59A5917EC95B645BF93C2AFB297CDEC66833320003B>|gif>|400px|223px||>
  </big-figure|Volatility Smile and Skew >

  Volatility term structure show the relation between the implied volatility
  and the time to maturity <math|\<tau\>>. usually, implied volatility is a
  decreasing function of <math|\<tau\>>, since implied volatility can't be
  negative, we can imaging volatility term structure is also convex. Plotting
  the implied volatility with respect to <math|\<tau\>> and <math|K> yields
  volatility surface.\ 

  <\big-figure>
    <image|pic/atm-vol-structure1.png|336px|258px||>
  </big-figure|Volatility Term Structure>

  \;

  \;

  <subsection|Data source and related data issue>

  <\enumerate-numeric>
    <item>option price <math|V>: I choose the SPX pm settled
    option<cite|SPXPM>, this is an index option and the underlying is S&P500
    index. Further it is European style option so that BS formula can be used
    in this case. I found it is really hard to find an European sytle option
    in the stock market, almost all option are American style, only few index
    option is European style. One may ask why not use warrant? Yes, warrant
    is very similar to option, the good news about warrant is that there are
    a lot of European style warrant, while the dilution issue stops us from
    applying BS formula directly. sometimes the real market price is delayed
    and I use the average of bid and ask as the approximation of current
    market price.

    <item>risk free rate <math|r>: I choose LIBOR dollar rate as the
    benchmark of risk free interest rate, It may differs from the textbook
    which usually use US government bond's spot rate as risk free. This is
    because in recent years bond rate is frequently manipulated by government
    for regulation purpose, especially short term bond like T-bills. While
    the LIBOR rate<cite|libor> is determined by market and in short term
    those world's best borrowers can hardly default. also we should notice
    risk free rate is dependent on the concerning time period, options with
    different expiry have differnt risk free rate.
  </enumerate-numeric>

  \;

  <subsection|Code and Result>

  the R code is as follows:

  <\shell-code>
    setwd("F:\\\\compFinance\\\\prjt2")

    load("spx.RData")

    x = spx

    library(quantmod)

    library(RQuantLib)

    Sys.setlocale(,"English")

    #x = getOptionChain("^SPXPM",NULL)

    \;

    libor = c(0.14775,0.19095,0.22810,

    \ \ \ \ \ \ \ \ \ \ 0.2605,0.2929,0.32530,

    \ \ \ \ \ \ \ \ \ \ 0.360183,0.3950667,0.4299500,

    \ \ \ \ \ \ \ \ \ \ 0.4648333,0.4997167,0.53460)*0.01

    dvd = 1.46*0.01

    vix = 0.1235

    SPXpm = 1881.93

    underlying = SPXpm*100

    AugOption \<less\>- x$'Jul 2014'

    mty \<less\>- 11/72

    vCall = (AugOption$calls$Bid + AugOption$calls$Ask)/2*100

    vPut = (AugOption$puts$Bid + AugOption$puts$Ask)/2*100

    callLen = length(vCall)

    putLen = length(vPut)

    sumCall = list(K = AugOption$calls$Strike[1:(callLen-1)]*100,V =
    vCall[1:(callLen-1)],

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sigma = vector("numeric",callLen-1))

    sumPut = list(K = AugOption$puts$Strike[2:putLen]*100,V = vPut[2:putLen],

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sigma = vector("numeric",putLen-1))

    for(i in 1:(callLen-1)){

    \ \ #print(i)

    \ \ sumCall$sigma[i] = EuropeanOptionImpliedVolatility(type="call",sumCall$V[i],
    underlying,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sumCall$K[i],
    dividendYield=dvd, riskFreeRate=libor[2],maturity=mty,

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ volatility=vix)$impliedVol

    \ # print(sumCall$K[i])

    }

    \;

    for(i in 1:(putLen-1)){

    \ # print(i)

    \ \ sumPut$sigma[i] = EuropeanOptionImpliedVolatility(type="put",sumPut$V[i],
    underlying,

    \ \ \ \ \ \ \ \ sumPut$K[i], dividendYield=dvd,
    riskFreeRate=libor[2],maturity=mty,

    \ \ \ \ \ \ \ \ volatility=vix)$impliedVol

    }

    plot(sumCall$K,sumCall$sigma,xlim=range(sumCall$K,sumPut$K),ylim=range(sumCall$sigma,sumPut$sigma),col="red",xlab="Strike
    Price",ylab="Implied Volatility")

    lines(sumCall$K,sumCall$sigma,col="red")

    points(sumPut$K,sumPut$sigma,col="green")

    lines(sumPut$K,sumPut$sigma,col="green")

    legend(180000,0.25,legend=c("sigma by call","sigma by
    put"),col=c("red","green"),

    \ \ \ \ \ \ \ lwd=c(2,2),lty=c(1,1),bty="o",cex=0.8)
  </shell-code>

  \;

  This yields the implied volatility of both call and put on SPX on Jul 2014.

  <\big-figure>
    <image|pic/volsmile.png|579px|445px||><label|fig3>
  </big-figure|Volatility Smile>

  \;

  \;

  \;

  <subsection|Discussion: Explanation of Implied Volatility Gap>

  Due to call put parity, the implied volatiliy should be same for both call
  and put, If not the arbitrage exist. but in Figure <reference|fig3>. we can
  see implied volatility for call is always slightly above the put. this
  could be explained by the daily settlemen mechanism in derivative market.
  Since high spot interest rate and hight daily return are correlated, when
  the call holder receive the money in daily settlement he is more likely to
  reinvest at a hight interest rate, when he have to replenish the margin
  account, It is very possible interest rate is low and he has a low cost to
  fund these money. similar discussion can conclude daily settlement favors
  call holders and punish put holders. when the implied volatility gap exist,
  this ensure the call holders receive relatively less and pay
  more.<new-page>

  <section|Convergence of Binomial Method for Option Valuation>

  <subsection|Introduction>

  We discusse several different versions of the binomial model as it may be
  used for option pricing. As introduced in the course there are primarily
  three parameters <with|font-shape|italic|p>, <with|font-shape|italic|u> and
  <with|font-shape|italic|d> that need to be calculated to use the binomial
  model.

  Binomial models (and there are several) are arguably the simplest
  techniques used for option pricing. The mathematics behind the models is
  relatively easy to understand and (at least in their basic form) they are
  not difficult to implement.

  We discusse the general mathematical concepts behind the binomial model
  with particular attention paid to the original binomial model formulation
  by Cox, Ross and Rubinstein (CRR).\ 

  However, there are many other versions of the binomial model. Each of the
  approaches has its advantages and disadvantages for pricing different types
  of options. However, they all involve a similar three step process.

  <\enumerate>
    <item>Calculate potential future prices of the underlying asset(s) at
    expiry (and possibly at intermediate points in time too).

    <item>Calculate the payoff of the option at expiry for each of the
    potential underlying prices.

    <item>Discount the payoffs back to today to determine the option price
    today.
  </enumerate>

  There are many different approaches to calculating values for
  <with|font-shape|italic|p>, <with|font-shape|italic|u> and
  <with|font-shape|italic|d>. We will discuss some of then , which \ are
  developed by,

  <\itemize>
    <item>Cox-Ross-Rubinstein<cite|cox1979option>: \ This is the method most
    people think of when discussing the binomial model, and the one discussed
    in this tutorial.

    <item>Jarrow-Rudd<cite|jroption1983>: This is commonly called the
    equal-probability model.

    <item>Tian<cite|tian1993modified>: This is commonly called the moment
    matching model.

    <item>Leisen-Reimer<cite|leisen1996binomial>: This uses a completely
    different approach to all the other methods, relying on
    <strong|approximating the normal distrbution used in the Black-Scholes
    model>.
  </itemize>

  \;

  Three equations are required to be able to uniquely specify values for the
  three parameters of the binomial model. Two of these equations arise from
  the expectation that over a small period of time the binomial model should
  behave in the same way as an asset in a risk neutral world.

  <\equation*>
    <frac|\<mathd\>S|S>=r \<mathd\>t+\<sigma\>\<mathd\>W
  </equation*>

  Then use Ito Lemma, we can show that\ 

  <\equation*>
    E<around*|(|S<around*|(|\<Delta\>t|)>|)>=e<rsup|r\<Delta\>t>S<around*|(|0|)>,E<around*|(|S<rsup|2><around*|(|\<Delta\>t|)>|)>=e<rsup|<around*|(|2r+\<sigma\><rsup|2>|)>\<Delta\>t>S<rsup|2><around*|(|0|)>
  </equation*>

  This leads to the equation (Matching Return)

  <\equation>
    <label|eqnmatre>p u+<around*|(|1-p|)> d=e<rsup|r\<Delta\>t>
  </equation>

  which ensures that over the small period of time
  <with|font-shape|italic|<math|\<Delta\>t>> the expected return of the
  binomial model matches the expected return in a risk-neutral world, and the
  equation (Matching Variance),

  <\equation>
    <label|eqnmatva>p u<rsup|2>+<around*|(|1-p|)>d<rsup|2>=e<rsup|<around*|(|\<sigma\><rsup|2>+2r|)>\<Delta\>t>
  </equation>

  which ensures that the variance matches.

  \;

  For CRR, JR, and TIAN, we show the definitions as follows:

  \;

  <\definition>
    <dueto|CRR,JR and Tian>

    (Cox-Ross-Rubenstein model)\ 

    <\equation*>
      u=1/d\<Leftrightarrow\><choice|<tformat|<table|<row|<cell|u=exp<around*|{|\<sigma\><sqrt|\<Delta\>t>|}>>>|<row|<cell|d=1/u>>>>>,
      p=<frac|exp<around*|{|r\<Delta\>t|}>-d|u-d> <around*|(|together
      equantion <reference|eqnmatre>,<reference|eqnmatva>|)>
    </equation*>

    \;

    (Jarrow-Rudd model)

    <\equation*>
      p=<frac|1|2>\<Leftrightarrow\><choice|<tformat|<table|<row|<cell|u=exp<around*|{|\<mu\><rprime|'>\<Delta\>t+\<sigma\><sqrt|\<Delta\>t>|}>>>|<row|<cell|d=exp<around*|{|\<mu\><rprime|'>\<Delta\>t-\<sigma\><sqrt|\<Delta\>t>|}>>>>>>,where
      \<mu\><rprime|'>=r-<frac|1|2>\<sigma\><rsup|2>
    </equation*>

    \;

    (Tian model)

    <\equation*>
      p u<rsup|3>+<around*|(|1-p|)>d<rsup|3>=e<rsup|<around*|(|3r+3\<sigma\><rsup|2>|)>\<Delta\>t>\<Leftrightarrow\><choice|<tformat|<table|<row|<cell|u=<frac|M
      V|2><around*|(|V+1+<sqrt|V<rsup|2>+2V-3>|)>>>|<row|<cell|d=<frac|M
      V|2><around*|(|V+1-<sqrt|V<rsup|2>+2V-3>|)>>>>>>,where<choice|<tformat|<table|<row|<cell|M=exp<around*|(|r\<Delta\>t|)>>>|<row|<cell|V=exp<around*|(|\<sigma\><rsup|2>\<Delta\>t|)>>>>>>
    </equation*>
  </definition>

  \;

  <\remark>
    Actually, <math|u=1/d> cannot get CRR directly, so is <math|p=1/2>.\ 

    When, <math|u=1/d>, together with equation <reference|eqnmatre> and
    <reference|eqnmatva>, we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|u>|<cell|=>|<cell|A+<sqrt|A<rsup|2>-1>>>|<row|<cell|d>|<cell|=>|<cell|A-<sqrt|A<rsup|2>-1>>>|<row|<cell|A>|<cell|=>|<cell|<frac|1|2><around*|(|e<rsup|-r\<Delta\>t>+e<rsup|<around*|(|r+\<sigma\><rsup|2>|)>\<Delta\>t>|)>>>>>
    </eqnarray*>

    However, using Taylor expansion in terms of <math|<sqrt|\<Delta\>t>>, we
    can get CRR.

    Similarly, <math|p=1/2>, we can get\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|u>|<cell|=>|<cell|e<rsup|r\<Delta\>t><around*|(|1+<sqrt|e<rsup|\<sigma\><rsup|2>\<Delta\>t>-1>|)>>>|<row|<cell|d>|<cell|=>|<cell|e<rsup|r\<Delta\>t><around*|(|1-<sqrt|e<rsup|\<sigma\><rsup|2>\<Delta\>t>-1>|)>>>>>
    </eqnarray*>

    Then by Taylor expansion, we have JR tree.
  </remark>

  \;

  \;

  <subsection|CRR, JR and Tian for European Option converge with order 1>

  We try to prove that the binomial tree methods given by CRR, JR and Tian
  are linear convergent to Black-Schole formula. Before do that, we should
  review an essential work given by Leisen and
  Reimer<cite|leisen1996binomial>. We use his notation which given as
  follows:

  <\notation>
    <math|X<rsup|s,x><rsub|t>> shall be the solution of the stochastic
    differential equation:

    <\equation*>
      X<rsup|s,x><rsub|t>=x+<big|int><rsub|s><rsup|t>r
      X<rsub|t<rprime|'>><rsup|s,x>\<mathd\>t<rprime|'>+<big|int><rsub|s><rsup|t>\<sigma\>X<rsub|t<rprime|'>><rsup|s,x>\<mathd\>W<rsub|t<rprime|'>>
    </equation*>

    The probability measure is denoted by <math|P<rsub|W>>.\ 

    <math|P<rsub|B>> is the probability measure of discrete process
    <math|Y<rsub|n>> of <math|X<rsub|t><rsup|s,x>>, then\ 

    <\equation*>
      e<rsub|n>\<assign\>e<rsup|-r T><around*|\||E<rsub|W><around*|[|f<around*|(|X<rsub|T><rsup|0,S>|)>|]>-E<rsub|B><around*|[|f<around*|(|Y<rsub|n>|)>|]>|\|>
    </equation*>
  </notation>

  <\notation>
    <math|c<around*|(|t,S|)>\<assign\>e<rsup|-r<around*|(|T-t|)>>E<rsub|W><around*|[|f<around*|(|X<rsub|T><rsup|t,S>|)>|]>>
    is the <math|BS> price of a call option with stock value <math|S> at time
    t and maturity at time <math|T>.

    The time axis will be discretized in steps of length
    <math|\<Delta\>t=<frac|T|n>>. The discrete points will be denoted by
    <math|t<rsub|i>\<assign\>i\<cdot\>\<Delta\>t>.

    We use the abbrevation <math|X<rsub|k+1>\<assign\>X<rsub|t<rsub|k+1>><rsup|t<rsub|k>,Y<rsub|k>>>.

    The information structure is modelled by
    <math|\<cal-A\><rsub|k>=\<sigma\><around*|(|Y<rsub|i><around*|\||j\<leqslant\>k|\<nobracket\>>|)>>.
  </notation>

  <\notation>
    \;

    <\eqnarray*>
      <tformat|<table|<row|<cell|c<rsub|1><around*|(|t,S|)>\<assign\><frac|\<partial\>c|\<partial\>S><around*|(|t,S|)>>|<cell|>|<cell|<wide|c|~><rsub|1><around*|(|t,S|)>\<assign\>S
      <frac|\<partial\>c|\<partial\>S><around*|(|t,S|)>>>|<row|<cell|c<rsub|2><around*|(|t,S|)>\<assign\><frac|\<partial\><rsup|2>c|\<partial\>S<rsup|2>><around*|(|t,S|)>>|<cell|>|<cell|<wide|c|~><rsub|2><around*|(|t,S|)>\<assign\>S<rsup|2>
      <frac|\<partial\><rsup|2>c|\<partial\>S<rsup|2>><around*|(|t,S|)>>>|<row|<cell|c<rsub|3><around*|(|t,S|)>\<assign\><frac|\<partial\><rsup|3>c|\<partial\>S<rsup|3>><around*|(|t,S|)>>|<cell|>|<cell|<wide|c|~><rsub|3><around*|(|t,S|)>\<assign\>S<rsup|3>
      <frac|\<partial\><rsup|3>c|\<partial\>S<rsup|3>><around*|(|t,S|)>>>|<row|<cell|c<rsub|4><around*|(|t,S|)>\<assign\><frac|\<partial\><rsup|4>c|\<partial\>S<rsup|4>><around*|(|t,S|)>>|<cell|>|<cell|<wide|c|~><rsub|4><around*|(|t,S|)>\<assign\>S<rsup|4><frac|\<partial\><rsup|4>c|\<partial\>S<rsup|4>><around*|(|t,S|)>>>>>
    </eqnarray*>

    <\equation*>
      R<rsub|3><around*|(|t,z<rsub|1>,z<rsub|0>|)>\<assign\><big|int><rsub|z<rsub|0>><rsup|z<rsub|1>><around*|(|z<rsub|1>-S|)><rsup|3>c<rsub|4><around*|(|t,S|)>\<mathd\>S,\<forall\>z<rsub|0>,z<rsub|1>\<in\>\<bbb-R\><rsup|+>,\<forall\>t\<in\><around*|[|0,T|]>
    </equation*>

    <\equation*>
      d<rsub|1>=<frac|ln S/K+<around*|(|r+<frac|\<sigma\><rsup|2>|2>|)>t|\<sigma\><sqrt|t>>
    </equation*>
  </notation>

  <\notation>
    <\equation*>
      M<rsub|2><around*|(|t|)>\<assign\><frac|K e<rsup|-r
      t>|<sqrt|2\<pi\>>\<sigma\>>,M<rsub|3><around*|(|t|)>\<assign\><frac|K
      e<rsup|-r t>|<sqrt|2\<pi\>>\<sigma\><rsup|2>><around*|(|1+\<sigma\>|)>,M<rsub|4><around*|(|t|)>:=4<frac|e<rsup|<around*|(|2r+3\<sigma\><rsup|2>|)>t>|<sqrt|2\<pi\>>K<rsup|2>\<sigma\><rsup|2>>
    </equation*>
  </notation>

  <\notation>
    Moments, general monments and pseudo-moments

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|m|\<bar\>><rsub|n><rsup|1>>|<cell|\<assign\>>|<cell|E<rsub|B><around*|[|<frac|Y<rsub|k+1>|Y<rsub|k>>\|\<cal-A\><rsub|k>|]>-E<rsub|W><around*|[|<frac|X<rsub|k+1>|Y<rsub|k>>\|\<cal-A\><rsub|k>|]>>>|<row|<cell|<wide|m|\<bar\>><rsub|n><rsup|2>>|<cell|\<assign\>>|<cell|E<rsub|B><around*|[|<around*|(|<frac|Y<rsub|k+1>|Y<rsub|k>>|)><rsup|2>\|\<cal-A\><rsub|k>|]>-E<rsub|W><around*|[|<around*|(|<frac|X<rsub|k+1>|Y<rsub|k>>|)><rsup|2>\|\<cal-A\><rsub|k>|]>>>|<row|<cell|<wide|m|\<bar\>><rsub|n><rsup|3>>|<cell|\<assign\>>|<cell|E<rsub|B><around*|[|<around*|(|<frac|Y<rsub|k+1>|Y<rsub|k>>|)><rsup|3>\|\<cal-A\><rsub|k>|]>-E<rsub|W><around*|[|<around*|(|<frac|X<rsub|k+1>|Y<rsub|k>>|)><rsup|3>\|\<cal-A\><rsub|k>|]>>>|<row|<cell|m<rsub|n><rsup|1>>|<cell|\<assign\>>|<cell|E<rsub|B><around*|[|<frac|Y<rsub|k+1>|Y<rsub|k>>-1\|\<cal-A\><rsub|k>|]>-E<rsub|W><around*|[|<frac|X<rsub|k+1>|Y<rsub|k>>-1\|\<cal-A\><rsub|k>|]>>>|<row|<cell|m<rsub|n><rsup|2>>|<cell|\<assign\>>|<cell|E<rsub|B><around*|[|<around*|(|<frac|Y<rsub|k+1>|Y<rsub|k>>-1|)><rsup|2>\|\<cal-A\><rsub|k>|]>-E<rsub|W><around*|[|<around*|(|<frac|X<rsub|k+1>|Y<rsub|k>>-1|)><rsup|2>\|\<cal-A\><rsub|k>|]>>>|<row|<cell|m<rsub|n><rsup|3>>|<cell|\<assign\>>|<cell|E<rsub|B><around*|[|<around*|(|<frac|Y<rsub|k+1>|Y<rsub|k>>-1|)><rsup|3>\|\<cal-A\><rsub|k>|]>-E<rsub|W><around*|[|<around*|(|<frac|X<rsub|k+1>|Y<rsub|k>>-1|)><rsup|3>\|\<cal-A\><rsub|k>|]>>>|<row|<cell|p<rsub|n>>|<cell|\<assign\>>|<cell|E<rsub|B><around*|[|<around*|(|ln<frac|Y<rsub|k+1>|Y<rsub|k>>|)><around*|(|<frac|Y<rsub|k+1>|Y<rsub|k>>-1|)><rsup|3><mid|\|>\<cal-A\><rsub|k>|]>>>|<row|<cell|<wide|p|\<bar\>><rsub|n>>|<cell|\<assign\>>|<cell|E<rsub|W><around*|[|<around*|(|ln<frac|X<rsub|k+1>|Y<rsub|k>>|)><around*|(|<frac|X<rsub|k+1>|Y<rsub|k>>-1|)><rsup|3><mid|\|>\<cal-A\><rsub|k>|]>>>>>
    </eqnarray*>

    Here we use intervals <math|<around*|[|Y<rsub|k>,Y<rsub|k+1>|]>> if
    <math|Y<rsub|k+1>\<geqslant\>Y<rsub|k>> and
    <math|<around*|[|Y<rsub|k+1>,Y<rsub|k>|]>> if
    <math|Y<rsub|k>\<gtr\>Y<rsub|k+1>>.
  </notation>

  \;

  <\theorem>
    <label|thm6><cite|leisen1996binomial> Let
    <math|<around*|{|Y<rsub|0><rsup|n>,\<ldots\>,Y<rsub|n><rsup|n>|}>> be a
    lattice approach with <math|Y<rsub|0><rsup|n>=Y<rsub|0><around*|(|\<forall\>n|)>>,
    let <math|e<rsub|n>> be the error in the price of a European call option
    that is

    <\equation*>
      e<rsub|n>\<assign\>e<rsup|-r T><around*|\||E<rsub|W><around*|[|f<around*|(|X<rsub|T><rsup|0,S>|)>\|\<cal-A\><rsub|0>|]>-E<rsub|B><around*|[|f<around*|(|Y<rsub|n>|)>\|\<cal-A\><rsub|0>|]>|\|>
    </equation*>

    Then there exists a constant, only depending on
    <math|S<rsub|0>,K,r,\<sigma\>,T> such that\ 

    <\equation*>
      e<rsub|n>\<leqslant\>k<around*|(|<around*|(|m<rsub|n><rsup|2>+m<rsub|n><rsup|3>+p<rsub|n>|)>n+1/n|)>
    </equation*>

    \;
  </theorem>

  <\proof>
    <dueto|Sketch>Using <math|f<around*|(|Y<rsub|n>|)>=c<around*|(|T,Y<rsub|n>|)>>
    and riskless property of BS price, we have

    <\equation*>
      <with|font-base-size|8|e<rsub|n>=<around*|\||E<rsub|B><around*|[|<big|sum><rsub|k=0><rsup|n-1>e<rsup|-r
      t<rsub|k+1>><around*|{|E<rsub|B><around*|[|c<around*|(|t<rsub|k+1>,Y<rsub|k+1>|)>-c<around*|(|t<rsub|k+1>,Y<rsub|k>|)>\|\<cal-A\><rsub|k>|]>-E<rsub|W><around*|[|c<around*|(|t<rsub|k+1>,X<rsub|k+1>|)>-c<around*|(|t<rsub|k+1>,Y<rsub|k>|)>\|\<cal-A\><rsub|k>|]>|}>\|\<cal-A\><rsub|0>|]>|\|>>
    </equation*>

    for <math|k=n-1>, by lemmata [<math|<reference|lem13>>,<reference|lem14>],
    it is evaluated separatedly as <math|O<around*|(|<frac|1|n>|)>>. The
    other time points are evaluated by a Taylor expansion(dispite of
    coefficient of series) around <math|Y<rsub|k>>. This yields:

    <\eqnarray*>
      <tformat|<table|<row|<cell|e<rsub|n>>|<cell|\<leqslant\>>|<cell|O<around*|(|1/n|)>+\|E<rsub|B><around*|[|\<Sigma\><rsub|k=0><rsup|n-2>e<rsup|-r
      t<rsub|k+1>><around*|{|E<rsub|B><around*|[|c<rsub|1><around*|(|t<rsub|k+1>,Y<rsub|k>|)><around*|(|Y<rsub|k+1>-Y<rsub|k>|)>+c<rsub|2><around*|(|t<rsub|k+1>,Y<rsub|k>|)><around*|(|Y<rsub|k+1>-Y<rsub|k>|)><rsup|2>|\<nobracket\>>|\<nobracket\>>|\<nobracket\>>>>|<row|<cell|>|<cell|>|<cell|+c<rsub|3><around*|(|t<rsub|k+1>,Y<rsub|k>|)><around*|(|Y<rsub|k+1>-Y<rsub|k>|)><rsup|3>+R<rsub|3><around*|(|t<rsub|k+1>,Y<rsub|k+1>,Y<rsub|k>|)>\|\<cal-A\><rsub|k><around*|\<nobracket\>||]>>>|<row|<cell|>|<cell|>|<cell|-E<rsub|W><around*|[|c<rsub|1><around*|(|t<rsub|k+1>,Y<rsub|k>|)><around*|(|X<rsub|k+1>-Y<rsub|k>|)>+c<rsub|2><around*|(|t<rsub|k+1>,Y<rsub|k>|)><around*|(|X<rsub|k+1>-Y<rsub|k>|)><rsup|2>|\<nobracket\>>>>|<row|<cell|>|<cell|>|<cell|+c<rsub|3><around*|(|t<rsub|k+1>,Y<rsub|k>|)><around*|(|X<rsub|k+1>-Y<rsub|k>|)><rsup|3>+R<rsub|3><around*|(|t<rsub|k+1>,X<rsub|k+1>,Y<rsub|k>|)>\|\<cal-A\><rsub|k><around*|\<nobracket\>||]>
      <around*|\<nobracket\>||}><mid|\|>\<cal-A\><rsub|0><around*|\<nobracket\>|
      |]>\|>>>>
    </eqnarray*>

    Since\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|E<rsub|B><around*|[|c<rsub|1><around*|(|t<rsub|k+1>,Y<rsub|k>|)><around*|(|Y<rsub|k+1>-Y<rsub|k>|)>\|\<cal-A\><rsub|k>|]>>|<cell|=>|<cell|<wide|c<rsub|1>|~><around*|(|t<rsub|k+1>,Y<rsub|k>|)>E<rsub|B><around*|[|<frac|Y<rsub|k+1>|Y<rsub|k>>-1<mid|\|>\<cal-A\><rsub|k>|]>>>|<row|<cell|E<rsub|W><around*|[|c<rsub|1><around*|(|t<rsub|k+1>,Y<rsub|k>|)><around*|(|X<rsub|k+1>-Y<rsub|k>|)>\|\<cal-A\><rsub|k>|]>>|<cell|=>|<cell|<wide|c<rsub|1>|~><around*|(|t<rsub|k+1>,Y<rsub|k>|)>E<rsub|W><around*|[|<frac|X<rsub|k+1>|Y<rsub|k>>-1<mid|\|>\<cal-A\><rsub|k>|]>>>>>
    </eqnarray*>

    Therefore, we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|e<rsub|n>>|<cell|\<leqslant\>>|<cell|O<around*|(|1/n|)>+<around*|\||\<Sigma\>e<rsup|-r
      t<rsub|k+1>>E<rsub|B><around*|[|<wide|c<rsub|1>|~><around*|(|t<rsub|k+1>,Y<rsub|k>|)>\|\<cal-A\><rsub|0>|]>|\|>\<cdot\><around*|\||<with|color|red|m<rsub|n><rsup|1>>|\|><eq-number>>>|<row|<cell|>|<cell|>|<cell|+<around*|\||\<Sigma\>e<rsup|-r
      t<rsub|k+1>>E<rsub|B><around*|[|<wide|c<rsub|2>|~><around*|(|t<rsub|k+1>,Y<rsub|k>|)>\|\<cal-A\><rsub|0>|]>|\|>\<cdot\><around*|\||m<rsub|n><rsup|2>|\|><eq-number>>>|<row|<cell|>|<cell|>|<cell|+<around*|\||\<Sigma\>e<rsup|-r
      t<rsub|k+1>>E<rsub|B><around*|[|<wide|c<rsub|3>|~><around*|(|t<rsub|k+1>,Y<rsub|k>|)>\|\<cal-A\><rsub|0>|]>|\|>\<cdot\><around*|\||m<rsub|n><rsup|3>|\|><eq-number>>>|<row|<cell|>|<cell|>|<cell|+<around*|\||E<rsub|B><around*|[|\<Sigma\>e<rsup|-r
      t<rsub|k+1>><around*|{|E<rsub|B><around*|[|R<rsub|3><around*|(|Y<rsub|k+1>|)>\|\<cal-A\><rsub|k>|]>+E<rsub|W><around*|[|R<rsub|3><around*|(|X<rsub|k+1>|)>\|\<cal-A\><rsub|k>|]>|}>\|\<cal-A\><rsub|0>|]>|\|><eq-number>>>>>
    </eqnarray*>
  </proof>

  \;

  Now our task is to valuate these parts separately, we extract some
  important lemmata.

  \;

  <\lemma>
    \;

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<wide|c|~><rsub|2><around*|(|t,S|)>|\|>>|<cell|\<leqslant\>>|<cell|<frac|M<rsub|2><around*|(|T-t|)>|<sqrt|T-t>>>>|<row|<cell|<around*|\||<wide|c|~><rsub|3><around*|(|t,S|)>|\|>>|<cell|\<leqslant\>>|<cell|<frac|M<rsub|3><around*|(|T-t|)>|T-t>>>|<row|<cell|<around*|\||c<rsub|4><around*|(|t,S|)>|\|>>|<cell|\<leqslant\>>|<cell|<frac|M<rsub|4><around*|(|T-t|)>|T-t>>>>>
    </eqnarray*>
  </lemma>

  <\lemma>
    <math|<around*|\||R<rsub|3><around*|(|t,z<rsub|1>,z<rsub|0>|)>|\|>\<leqslant\><around*|(|ln<frac|z<rsub|1>|z<rsub|0>>|)><around*|(|z<rsub|1>-z<rsub|0>|)><rsup|3>
    max<rsub|S\<in\><around*|[|z<rsub|0>,z<rsub|1>|]>><around*|\||c<rsub|4><around*|(|t,S|)>|\|>>.
  </lemma>

  <\lemma>
    \;

    <\equation*>
      <big|sum><rsub|k=0><rsup|n-2>e<rsup|-r
      t<rsub|k+1>>E<rsub|B><around*|[|<around*|\||<wide|c<rsub|3>|~><around*|(|t<rsub|k+1>,Y<rsub|k>|)>|\|>
      <mid|\|>\<cal-A\><rsub|0>|]>\<leqslant\><around*|(|<frac|16\<sigma\>M<rsub|3>|<sqrt|p
      q>>+M<rsub|3>|)>\<cdot\>n\<nocomma\>,where
      M<rsub|3>=M<rsub|3><around*|(|0|)>
    </equation*>

    \;
  </lemma>

  <\lemma>
    \;

    <\equation*>
      <big|sum><rsub|k=0><rsup|n-2>e<rsup|-r
      t<rsub|k+1>>E<rsub|B><around*|[|E<rsub|B><around*|[|<around*|\||R<rsub|3><around*|(|t,Y<rsub|k+1>,Y<rsub|k>|)>|\|><mid|\|>\<cal-A\><rsub|k>|]>
      <mid|\|>\<cal-A\><rsub|0>|]>\<leqslant\><around*|(|<frac|24\<sigma\>M<rsub|4>|<sqrt|p
      q >>+M<rsub|4><with|color|red|E<rsub|B><around*|[|Y<rsub|k><rsup|3>|]>>|)>\<cdot\>n
      ,where M<rsub|4>=M<rsub|4><around*|(|0|)>
    </equation*>
  </lemma>

  <\lemma>
    \;

    <\equation*>
      <with|font-base-size|8|<big|sum><rsub|k=0><rsup|n-2>e<rsup|-r
      t<rsub|k+1>>E<rsub|B><around*|[|E<rsub|W><around*|[|<around*|\||R<rsub|3><around*|(|t,X<rsub|k+1>,Y<rsub|k>|)>|\|><mid|\|>\<cal-A\><rsub|k>|]>
      <mid|\|>\<cal-A\><rsub|0>|]>\<leqslant\><frac|24\<sigma\>M<rsub|4>|<sqrt|p
      q >><around*|(|2Y<rsub|0>|)><rsup|3><with|color|red|<wide|p|\<bar\>><rsub|n>>+<with|color|red|E<rsub|B><around*|[|Y<rsub|k><rsup|3>|]>><around*|(|<frac|4M<rsub|4>e<rsup|4<around*|\||m|\|>>|<sqrt|2\<pi\>><around*|(|T-t|)>><around*|(|\<Delta\>t|)><rsup|4><sqrt|ln<frac|1|\<Delta\>t>>+M<rsub|4><with|color|red|<wide|p|\<bar\>><rsub|n>>|)>>
    </equation*>

    \;

    <math|where M<rsub|4>=M<rsub|4><around*|(|0|)>>,
    <math|m=<frac|T|n><around*|(|r-<frac|\<sigma\><rsup|2>|2>|)>>.
  </lemma>

  <\lemma>
    <\equation*>
      E<rsub|B><around*|[|Y<rsub|k><rsup|3>\|\<cal-A\><rsub|0>|]>\<leqslant\>const
    </equation*>

    \;
  </lemma>

  <\lemma>
    <\equation*>
      <wide|p|\<bar\>><rsub|n>=O<around*|(|\<Delta\>t<rsup|2>|)>
    </equation*>
  </lemma>

  The next two lemmata are using in canseling <math|k=n-1> term:

  <\lemma>
    <label|lem13>

    <\equation*>
      <around*|\||E<rsub|B><around*|[|E<rsub|W><around*|[|f<around*|(|X<rsub|n>|)>-f<around*|(|Y<rsub|n-1>|)>\|\<cal-A\><rsub|n-1>|]>\|\<cal-A\><rsub|0>|]>|\|>=O<around*|(|1/n|)>
    </equation*>
  </lemma>

  <\lemma>
    <label|lem14>

    <\equation*>
      <around*|\||E<rsub|B><around*|[|E<rsub|B><around*|[|f<around*|(|Y<rsub|n>|)>-f<around*|(|Y<rsub|n-1>|)>\|\<cal-A\><rsub|n-1>|]>\|\<cal-A\><rsub|0>|]>|\|>=O<around*|(|1/n|)>
    </equation*>
  </lemma>

  From these Lemma, we finished proof.

  \;

  \;

  \;

  <\corollary>
    CRR, JR, Tian Binomial methods converges with order 1. \ 

    <\proof>
      We just give a proof of <math|CRR>, others are simlilar to it through
      prvious theorem.

      To prove CRR converges with order , we only need to verify:
      <math|<wide|m|\<bar\>><rsub|n><rsup|2>=O<around*|(|<frac|1|n<rsup|2>>|)>>
      ,<math|<wide|m|\<bar\>><rsub|n><rsup|3>=O<around*|(|<frac|1|n<rsup|2>>|)>>
      ,<math|p<rsub|n>=O<around*|(|<frac|1|n<rsup|2>>|)>>.

      Since <math|p u+q d=e<rsup|r\<Delta\>t>>,we have\ 

      <\equation*>
        p u<rsup|2>+q u d=u e<rsup|r\<Delta\>t>,p u d+q d<rsup|2>= d
        e<rsup|r\<Delta\>t>
      </equation*>

      Hence

      <\equation*>
        p u<rsup|2>+q d<rsup|2>=e<rsup|r\<Delta\>t><around*|(|u+d|)>-1
      </equation*>

      Then\ 

      <\equation*>
        <wide|m|\<bar\>><rsub|n><rsup|2>=<around*|\||p u<rsup|2>+q
        d<rsup|2>-e<rsup|2r\<Delta\>t+\<sigma\><rsup|2>\<Delta\>t>|\|>=e<rsup|r\<Delta\>t><around*|\||u+d-e<rsup|-r\<Delta\>t>-e<rsup|r\<Delta\>t+\<sigma\><rsup|2>\<Delta\>t>|\|>=e<rsup|r\<Delta\>t>
        O<around*|(|1/n<rsup|2>|)>=O<around*|(|1/n<rsup|2>|)>
      </equation*>

      Similarly, we have <math|<wide|m|\<bar\>><rsub|3><rsup|2>=O<around*|(|1/n<rsup|2>|)>>.

      Also we have <math|u-1=O<around*|(|1/<sqrt|n>|)>,d-1=O<around*|(|1/<sqrt|n>|)>>
      from series expansion of exp function. Since <math|ln u=-ln
      d=\<sigma\><sqrt|\<Delta\>t>>, we get
      <math|p<rsub|n>=O<around*|(|1/n<rsup|2>|)>>.\ 
    </proof>
  </corollary>

  We have some image results for these three trees:

  <big-figure|<image|pic/CRR.png|701px|430px||>|CRR Convergence>

  <big-figure|<image|pic/JR.png|701px|430px||>|JR Convergence>

  <big-figure|<image|pic/Tian.png|701px|429px||>|TIAN Convergence>

  \;

  \;

  \;

  \;

  More precisely, for example For CRR tree, we
  have<cite|diener2004asymptotics>

  <\corollary>
    <dueto|CRR model>If the underlying asset is such that <math|u
    =e<rsup|\<sigma\>/<sqrt|n>> > and <math|d =e<rsup|-\<sigma\>/<sqrt|n>> >,
    then the price at <math|t=0> of a call option with value
    <math|<around*|(|u<rsup|j>d<rsup|n-j>-K|)><rsup|+>> at time
    <math|T=n\<Delta\>t=1> satisfies:

    <\equation*>
      <with|font-base-size|7|C<around*|(|n,S|)>=BS+<frac|1|n><around*|{|-<sqrt|2/\<pi\>>K
      e<rsup|-r>e<rsup|-<frac|1|2><around*|(|\<sigma\>/2-<around*|(|r-ln
      K|)>/\<sigma\>|)><rsup|2>><around*|(|\<sigma\>S<around*|(|S-1|)>+<frac|\<sigma\><rsup|4>+12<around*|(|\<sigma\><rsup|2>+r<rsup|2>|)>+8rln
      K+4<around*|(|ln K|)><rsup|2>|96\<sigma\><rsup|>>|)>|}>+O<around*|(|<frac|1|n<sqrt|n>>|)>>
    </equation*>
  </corollary>

  \;

  \;

  \;

  <subsection|Higher order Binomial Method for European Option Valuation>

  The model given by Leisen and Reimer<cite|leisen1996binomial> giving more
  accurate approximation of the option value compared to the other models.
  This model has an important advantage against the other models. The model
  have <strong|quadratic converges> in the number of time steps, while the
  other models have a linear convergence. That's why the accuracy is much
  better. \ The idea is that we don't fix the strick overall, we fix the
  center of the tree. This implies that the strike is always contained in the
  binomial tree grid.

  However, Leisen and Reimer haven't prove that order. Mark S. Joshi has
  proved that in <cite|joshi2009achieving> using the asympototic expansion of
  binomial coeeficient. What's more, Joshi<cite|joshi2010achieving> has
  created any high order convergent Binomial Method using this way.

  An asymptotic expansion describes the asymptotic behavior of a function in
  terms of a sequence of <strong|gauge functions>. The denition was
  introduced by Poincar<math|<wide|e|\<acute\>>> (1886), and it provides a
  solid mathematical foundation for the use of many divergent series. Here
  we'd like to introduce asympototic expansion<cite|copson1965asymptotic>,
  which is adapted from the lecture notes of prof. <hlink|John
  Hunter|<hlink|https://www.math.ucdavis.edu/~hunter/m204/ch2.pdf|https://www.math.ucdavis.edu/~hunter/m204/ch2.pdf>>.

  \;

  \;

  <subsubsection|Asympototic expansions>

  <\definition>
    <dueto|Asympototic expansions>A sequence of functions
    <math|\<varphi\><rsub|n>:> <math|\<bbb-R\>\\ 0 \<rightarrow\> \<bbb-R\>>,
    where <math|n = 0,1,2, . . .>, is an asymptotic sequence as <math|x
    \<rightarrow\> 0> if for each <math|n = 0,1,2, . . .> we have

    <\equation*>
      \<varphi\><rsub|n+1> = o(\<varphi\><rsub|n>) as x \<rightarrow\> 0
    </equation*>

    We call <math|\<varphi\><rsub|n>> a <strong|gauge function>. If
    <math|{\<varphi\><rsub|n>}> is an <strong|asymptotic sequence> and
    \ <math|f : \<bbb-R\> \\ 0 \<rightarrow\> \<bbb-R\>> is a function, we
    write

    <\equation>
      <label|eqn5>f<around*|(|x|)>\<sim\><big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<varphi\><rsub|n><around*|(|x|)>
      as x \<rightarrow\> 0
    </equation>

    if for each<math| N = 0,1,2, . . >. we have

    <\equation*>
      f<around*|(|x|)>-<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<varphi\><rsub|n><around*|(|x|)>=o<around*|(|\<varphi\><rsub|N>|)>
      as x\<rightarrow\>0
    </equation*>

    We call (<reference|eqn5>) the <strong|asymptotic expansion> of f with
    respect to <math|{\<varphi\><rsub|n>} as x \<rightarrow\> 0>.
  </definition>

  \;

  <\example>
    The function log sin x has an asymptotic expansion as <math|x
    \<rightarrow\> 0<rsup|+>> with respect to the asymptotic sequence
    <math|<around*|{|log x,x<rsup|2>,x<rsup|4>,\<ldots\>|}>>:

    <\equation*>
      log sin x\<sim\>log x+<frac|1|6>x<rsup|2>+\<ldots\> as
      x\<rightarrow\>0<rsup|+>
    </equation*>
  </example>

  \;

  Asymptotic power series,

  <\equation*>
    f<around*|(|x|)>\<sim\><big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>x<rsup|n>
    as x\<rightarrow\>0
  </equation*>

  are among the most common and useful asymptotic expansions.

  \;

  \;

  <subsubsection|Leisen-Reimer Tree>

  \;

  Now we first consider one improved method given by Leisen and Reimer:

  <\definition>
    <dueto|Leisen-Reimer Tree>

    <\equation*>
      <choice|<tformat|<table|<row|<cell|u=e<rsup|r\<Delta\>t>
      <frac|p<rprime|'>|p>>>|<row|<cell|d=e<rsup|r\<Delta\>t>
      <frac|1-p<rprime|'>|1-p>>>>>>, <choice|<tformat|<table|<row|<cell|p<rprime|'>=h<rsup|-1><around*|(|d<rsub|1>|)>>>|<row|<cell|p=h<rsup|-1><around*|(|d<rsub|2>|)>>>>>>
    </equation*>

    where <with|font-shape|italic|<math|h<rsup|-1><around*|(|\<ast\>|)>>> is
    a discrete approximation to the cummulative distribution function for a
    normal distribution.
  </definition>

  There are several ways this can be calculated. One suggested by Leisen and
  Reimer is to use, the Peizer-Pratt method to invert the binomial
  distribution(n=2j+1):\ 

  <\equation*>
    h<rsup|-1><around*|(|z|)>=<frac|1|2>\<mp\><around*|[|<frac|1|4>-<frac|1|4>exp<around*|{|-<around*|(|<frac|z|n+1/3>|)><rsup|2><around*|(|n+<frac|1|6>|)>|}>|]><rsup|1/2>
  </equation*>

  \;

  where <with|font-shape|italic|n> is the number of time points in the model
  (including times <with|font-shape|italic|0> and <with|font-shape|italic|T>)
  which must be odd, and <with|font-shape|italic|d<rsub|1>> and
  <with|font-shape|italic|d<rsub|2>> are their usual definitions from the
  Black-Scholes formulation.

  Maybe you can get an intuitive improved convergence of LR method in the
  following graph:

  <big-figure|<image|pic/optionpricingdemo_01.png|601px|368px||>|Convergence
  of LR>

  \;

  \ 

  \;

  \;

  \;

  <subsection|Convergence of Ammerican Put Options>

  The theorem <reference|thm6> is also true for Ammerican put options,
  however there is also an lower bound for
  convergence<cite|leisen1998pricing>.

  Damien Lamberton<cite|lamberton1998error> establish some error estimates
  for the CRR binomial approximation of American put prices in the
  Black-Scholes model. He prove that if <math|P> is the American put price
  and <math|P<rsub|n>> its <math|n>-step binomial approximation, there exist
  positive constants c and C such that <math|-c/n<rsup|2/3> \<less\>
  P<rsub|n>-P \<less\> C/n<rsup|3/4>>.

  For the Leisen-Reimer tree, Leisen <cite|leisen1998pricing> has shown that
  American puts have first order convergence, whilst the models of Jarrow and
  Rudd and Tian have convergence between order <math|1/2> and 1.

  <\theorem>
    Let <math|<around*|(|<wide|R<rsub|>|\<bar\>><rsub|n>|)><rsub|n\<in\>\<bbb-N\>>>
    be a sequence of lattices and <math|m<rsub|n><rsup|2>,m<rsub|n><rsup|2>,p<rsub|n>>
    its respective (pseudo-)moments. Then there exixts a constant
    <math|k<rsub|1><around*|(|S<rsub|0>,K,r,\<sigma\>,T|)>> such that\ 

    <\equation*>
      P<rsup|a><around*|(|0,S<rsub|0>|)>-P<rsup|a><rsub|n><around*|(|0,S<rsub|0>|)>\<geqslant\>k<rsub|1><around*|{|n<around*|(|m<rsub|n><rsup|2>+m<rsup|3><rsub|n>+p<rsub|n>|)>+<frac|1|<sqrt|n>>|}>
    </equation*>

    If <math|<around*|(|<wide|R<rsub|>|\<bar\>><rsub|n>|)><rsub|n\<in\>\<bbb-N\>>>
    is constructed according to Leisen-Reimer lattice approach, then we have
    stronger results that there exists a constant
    <math|k<rsub|1><around*|(|S<rsub|o>,K,r,\<sigma\>,T|)>> such that\ 

    <\equation*>
      P<rsup|a><around*|(|0,S<rsub|0>|)>-P<rsup|a><rsub|n><around*|(|0,S<rsub|0>|)>\<geqslant\>k<rsub|1><around*|{|n<around*|(|m<rsub|n><rsup|2>+m<rsup|3><rsub|n>+p<rsub|n>|)>+<frac|1|n>|}>
    </equation*>

    \;
  </theorem>

  <\corollary>
    American put option prices calculated using the lattice approach of
    Leisen-Reimer converge with order one.
  </corollary>

  <\corollary>
    American put option prices calculated using the lattice approaches of JR
    and Tian converge with order one from above and order 1/2 from below.
  </corollary>

  \;

  \;

  \;

  <subsection|Sawtooth and periodic humps>

  For a European option, when we increase n and plot Error<math|<rsub|n>>
  against n we see the following shape

  <big-figure|<image|pic/sawtooth.PNG|551px|331px||>|Sawtooth Effect>

  \;

  We see two distinct features, the first is a sawtoothing and the second is
  periodic humps. The sawtoothing is known as the `odd-even effect' where as
  you move from say <math|i> steps to <math|i+1> steps the change in
  <math|V<rsub|n>> is very large. The following explains the odd-even effect:

  The binomial approximation to the normal is depicted for lattices with 6
  and 7 steps. The red shading denotes which nodes contribute value to the
  option price if K = 100.

  <big-figure|<image|pic/evenodd.PNG|621px|291px||>|odd-even effect>

  \;

  Periodic humps are connected to the position of the binomial nodes. Let L
  be denoted by

  <\equation*>
    \<Lambda\>=<frac|S<rsub|k>-K|S<rsub|k>-S<rsub|k-1>>
  </equation*>

  where <math|S<rsub|k>> is the closest node above the exercise price and
  <math|S<rsub|k-1>> below. The plots of <math|\<Lambda\>> against the error
  from the binomial lattice as follows: The dashed lines here denote the
  error and the solid lines the corresponding value of <math|\<Lambda\>>.
  (Only even numbers of steps were considered.)\ 

  <\big-figure|<image|pic/periodic.PNG|451px|326px||>>
    periodic humps effect
  </big-figure>

  <new-page>

  <section|ZNJS>

  <subsection|Financial report on ZNJS>

  <big-figure|<image|pic/znjs/report1.png|703px|93px||>|Report 1>

  <big-figure|<image|pic/znjs/report2.png|701px|172px||>|Report 2>

  <big-figure|<image|pic/znjs/report3.png|702px|78px||>|Report 3>

  \;

  \ \ \ This above table shows the financial conditions of the company
  seasonally. We can easily notice that the profit(and net income or so) has
  seasonality. So we should analyze the financial data yearly but not
  seasonally. We can see it more clearly as below.

  \;

  <big-figure|<image|pic/znjs/table1.png|701px|293px||>|Payoff per share>

  \ 

  \;

  <subsubsection|Four Principles in investing>

  <\itemize>
    <item>Safety is measured not by specific lien or other contractual
    rights, but by the ability of the issuer to meet all of its obligations.

    <item>This ability should be measured under conditions of depression
    rather than prosperity.

    <item>Deficient safety cannot be compensated for by an abnormally high
    coupon rate.

    <item>The selection of all bonds for investment should be subject to
    rules of exclusion and to specific quantitative tests corresponding to
    those prescribed by statute to govern investments of saving banks.
  </itemize>

  \;

  Here we introduce the concept of ROE (Return On Equity) ROE = (Net
  Profit/Equity). This quantity can reflect the earning power of a company,
  so as a investor we always expect it to be higher.

  \;

  \;

  <subsubsection|Comparison in the industry>

  <big-figure|<image|pic/znjs/dpc1.png|701px|210px||>|DuPont analysis>

  Since ZNJS ranks very well in the table, within the consideration of
  financial perspective, its ROE performs better than the average of the
  whole industry. We can conclude that this company have a relatively good
  earning power <em|in the industry.>

  \;

  \;

  <big-figure|<image|pic/znjs/dpc3.png|700px|200px||>|Comparison of growth>

  \;

  This table makes us have a better understanding on the future tendency of
  the development of the right company and the whole industry. Clearly the
  company has a poor growing ability, the growth expectation decreases
  sharply. While the industrial average has the same appearance, which shows
  that this problem comes out from the intrinsic property of the real estate
  industry.

  \;

  <subsubsection|Problems>

  <big-figure|<image|pic/znjs/markp.png|700px|257px||>|Performance in Market>

  This graph shows that ZNJS mainly follows the tendency of the whole real
  estate industry. But one can notice that, whenever the industry perform
  bad, ZNJS perform only worse. This tell us that, ZNJS is not a good
  security to invest. <em|Because its growing ability should be measured
  under conditions of depression rather than prosperity>. Which means a 'not
  bad' performance in depression is much more worthy than a 'good'
  performance in prosperity.

  \;

  We now can conclude that ZNJS relies highly on the industry performance.
  Its invest value is nearly completely dependent on its real estate
  intrinsic property.

  \;

  <big-figure|<image|pic/znjs/percent.png|701px|330px||>|Percentages>

  \;

  \;

  \;

  We should be careful about the 'inventory' section. Over <math|60%>
  inventory, this tells us that 2/3 of its properties are not been sold.
  Maybe this is good when the housing price growing constantly, but for now,
  this unsold properties can only be more risky like a bomb.

  And moreover, here are <math|76.59%> of Current Liabilities, added on the
  above large inventory, this company can easily be in debt and become
  bankruptcy in depression. It could have good performance in prosperity, but
  the high risk is not worth it while. This is because <em|`Deficient safety
  cannot be compensated for by an abnormally high coupon rate'.>

  \;

  \;

  \;

  <subsection|Prediction>

  All of the analysis above can be used in the prediction. Since we have
  concluded that ZNJS's performance highly depends on real estate industry.
  Though the government says that there is no danger of collapse, but the
  whole market appears negative attitude. And compare with the 2008 financial
  crisis, there are too many similar symptoms in the market. I personally
  argue that the real estate might not collapse, but wouldn't continue its
  prosperity as in the last 10 years. It's hard to predict the tendency next
  two months, but the conclusion in the long term must be negative.

  \;

  \;

  \;

  <subsection|Determination of the option price of ZNJS>

  Here we want to first determine the european call option price, since by
  B-S formula

  <\equation>
    C<around|(|S,t|)>=S*N<around|(|d<rsub|1>|)>-E*e<rsup|-r*<around|(|T-t|)>>*N<around|(|d<rsub|2>|)>
  </equation>

  where

  <\equation*>
    d<rsub|1>=<frac|ln S/E+<around|(|r+<frac|1|2>*\<sigma\><rsup|2>|)>*<around|(|T-t|)>|\<sigma\><sqrt|T-t>>
  </equation*>

  <\equation*>
    d<rsub|2>=<frac|ln S/E+<around|(|r-<frac|1|2>*\<sigma\><rsup|2>|)>*<around|(|T-t|)>|\<sigma\><sqrt|T-t>>
  </equation*>

  Since S, E, T, t, and r are all known, the only unknown parameter is the
  volatility <math|\<sigma\>>.

  Then how to evaluate the volatility from the historical data?

  Suppose that we have the stock price data every trading day and denote as
  <math|S<rsub|i>>. Further assume that the stock price follows the geometric
  Brownian motion, that is

  <\equation>
    S<rsub|i+1>=S<rsub|i>*exp <around|{|<around|(|\<mu\>-<frac|1|2>*\<sigma\><rsup|2>|)>*<around|(|t<rsub|i+1>-t<rsub|i>|)>+\<sigma\><sqrt|t<rsub|i+1>-t<rsub|i>>*Z<rsub|i>|}>
  </equation>

  where <math|Z<rsub|i>> follows standard normal distribution.

  Take the log of both side, here we have

  <\equation>
    ln S<rsub|i+1>-ln S<rsub|i>=<around|(|\<mu\>-<frac|1|2>*\<sigma\><rsup|2>|)>*<around|(|t<rsub|i+1>-t<rsub|i>|)>+\<sigma\><sqrt|t<rsub|i+1>-t<rsub|i>>*Z<rsub|i>
  </equation>

  Now let's do some simplifications, denote <math|D<rsub|i>=ln S<rsub|i+1>-ln
  S<rsub|i>> and <math|\<Delta\>*t=t<rsub|i+1>-t<rsub|i>> then the equation
  becomes

  <\equation>
    D<rsub|i>=<around|(|\<mu\>-<frac|1|2>*\<sigma\><rsup|2>|)>*\<Delta\>*t+\<sigma\><sqrt|\<Delta\>*t>*Z<rsub|i>
  </equation>

  We can evaluate the variance of <math|D<rsub|i>> using MatLab, say
  <math|d<rsup|2>>, and the corresponding evaluated volatility of
  <math|S<rsub|i>> must be

  <\equation>
    <wide|\<sigma\>|^><rsup|2>=<frac|d<rsup|2>|\<Delta\>*t>
  </equation>

  \;

  \;

  <subsubsection|Evaluation>

  For simplicity, we claim there are 250 trading days per year. And the data
  we use is taken daily, so the quantity <math|\<Delta\>*t=1/250> presumed.
  To assure the consistency, we only use the open price of each day.

  We get the variance <math|d<rsup|2>=9.0877\<times\>10<rsup|-4>>, then
  <math|<wide|\<sigma\>|^><rsup|2>=0.2272>, and then
  <math|<wide|\<sigma\>|^>=0.4766>. Then substitute it into the pricing
  formula we can get the answer.

  \;

  \;

  \;

  <subsubsection|Application>

  Today's stock price <math|S=6.96> , take the interest rate of 10-year
  treasury bonds as the risk-free interest rate, <math|r=4.1348%>, if we want
  to sell call options expire in 3 months, with strike price 8 yuan, then the
  option price can be calculated:

  <\equation*>
    d<rsub|1>=<frac|ln S/E+<around|(|r+<frac|1|2>*\<sigma\><rsup|2>|)>*<around|(|T-t|)>|\<sigma\><sqrt|T-t>>=<frac|ln
    6.96/8+<around|(|0.0413+<frac|1|2>*0.2272|)>*3/12|0.4766*<sqrt|3/12>>=-0.4219
  </equation*>

  <\equation*>
    d<rsub|2>=<frac|ln S/E+<around|(|r-<frac|1|2>*\<sigma\><rsup|2>|)>*<around|(|T-t|)>|\<sigma\><sqrt|T-t>>=<frac|ln
    6.96/8+<around|(|0.0413-<frac|1|2>*0.2272|)>*3/12|0.4766*<sqrt|3/12>>=-0.6602
  </equation*>

  and then

  <\equation*>
    C<around|(|S,t|)>=S*N<around|(|d<rsub|1>|)>-E*e<rsup|-r*<around|(|T-t|)>>*N<around|(|d<rsub|2>|)>=6.96*N(-0.4219)-8\<times\>e<rsup|-0.0413\<times\>3/12>*N(-0.6602)=0.3268
  </equation*>

  \;

  <new-page>

  <section|<with|font|simfang|<with|font|simkai|\<#6CAA\>\<#6E2F\>\<#901A\>>>>

  <\with|font|simsun>
    \ \ \ 

    <\with|font|simkai>
      <strong|\<#6CAA\>\<#6E2F\>\<#901A\>>\<#662F\>\<#6307\>\<#4E0A\>\<#6D77\>\<#8BC1\>\<#5238\>\<#4EA4\>\<#6613\>\<#6240\>\<#548C\>\<#9999\>\<#6E2F\>\<#8054\>\<#5408\>\<#4EA4\>\<#6613\>\<#6240\>\<#5141\>\<#8BB8\>\<#4E24\>\<#5730\>\<#6295\>\<#8D44\>\<#8005\>\<#901A\>\<#8FC7\>\<#5F53\>\<#5730\>\<#8BC1\>\<#5238\>\<#516C\>\<#53F8\>\<#FF08\>\<#6216\>\<#7ECF\>\<#7EAA\>\<#5546\>\<#FF09\>

      \<#4E70\>\<#5356\>\<#89C4\>\<#5B9A\>\<#8303\>\<#56F4\>\<#5185\>\<#7684\>\<#5BF9\>\<#65B9\>\<#4EA4\>\<#6613\>\<#6240\>\<#4E0A\>\<#5E02\>\<#7684\>\<#80A1\>\<#7968\>\<#FF0C\>\<#662F\>\<#6CAA\>\<#6E2F\>\<#80A1\>\<#7968\>\<#5E02\>\<#573A\>\<#4EA4\>\<#6613\>\<#4E92\>\<#8054\>\<#4E92\>\<#901A\>\<#673A\>\<#5236\>\<#3002\>

      \;

      <subsection|\<#7EC4\>\<#6210\>\<#90E8\>\<#5206\>>

      \<#6CAA\>\<#6E2F\>\<#901A\>\<#5305\>\<#62EC\>\<#6CAA\>\<#80A1\>\<#901A\>\<#548C\>\<#6E2F\>\<#80A1\>\<#901A\>\<#4E24\>\<#90E8\>\<#5206\>\<#FF1A\>

      \<#6CAA\>\<#80A1\>\<#901A\>\<#FF0C\>\<#662F\>\<#6307\>\<#6295\>\<#8D44\>\<#8005\>\<#59D4\>\<#6258\>\<#9999\>\<#6E2F\>\<#7ECF\>\<#7EAA\>\<#5546\>\<#FF0C\>\<#7ECF\>\<#7531\>\<#9999\>\<#6E2F\>\<#8054\>\<#5408\>\<#4EA4\>\<#6613\>\<#6240\>\<#8BBE\>\<#7ACB\>\<#7684\>\<#8BC1\>\<#5238\>\<#4EA4\>\<#6613\>\<#670D\>\<#52A1\>\<#516C\>\<#53F8\>\<#FF0C\>\<#5411\>\<#4E0A\>

      \<#6D77\>\<#8BC1\>\<#5238\>\<#4EA4\>\<#6613\>\<#6240\>\<#8FDB\>\<#884C\>\<#7533\>\<#62A5\>\<#FF08\>\<#4E70\>\<#5356\>\<#76D8\>\<#4F20\>\<#9012\>\<#FF09\>\<#FF0C\>\<#4E70\>\<#5356\>\<#89C4\>\<#5B9A\>\<#8303\>\<#56F4\>\<#5185\>\<#7684\>\<#4E0A\>\<#6D77\>\<#8BC1\>\<#5238\>\<#4EA4\>\<#6613\>\<#6240\>\<#4E0A\>\<#5E02\>\<#7684\>\<#80A1\>\<#7968\>\<#FF1B\>

      \<#6E2F\>\<#80A1\>\<#901A\>\<#FF0C\>\<#662F\>\<#6307\>\<#6295\>\<#8D44\>\<#8005\>\<#59D4\>\<#6258\>\<#5185\>\<#5730\>\<#8BC1\>\<#5238\>\<#516C\>\<#53F8\>\<#FF0C\>\<#7ECF\>\<#7531\>\<#4E0A\>\<#6D77\>\<#8BC1\>\<#5238\>\<#4EA4\>\<#6613\>\<#6240\>\<#8BBE\>\<#7ACB\>\<#7684\>\<#8BC1\>\<#5238\>\<#4EA4\>\<#6613\>\<#670D\>\<#52A1\>\<#516C\>\<#53F8\>\<#FF0C\>\<#5411\>

      \<#9999\>\<#6E2F\>\<#8054\>\<#5408\>\<#4EA4\>\<#6613\>\<#6240\>\<#8FDB\>\<#884C\>\<#7533\>\<#62A5\>\<#FF08\>\<#4E70\>\<#5356\>\<#76D8\>\<#4F20\>\<#9012\>\<#FF09\>\<#FF0C\>\<#4E70\>\<#5356\>\<#89C4\>\<#5B9A\>\<#8303\>\<#56F4\>\<#5185\>\<#7684\>\<#9999\>\<#6E2F\>\<#8054\>\<#5408\>\<#4EA4\>\<#6613\>\<#6240\>\<#4E0A\>\<#5E02\>\<#7684\>\<#80A1\>\<#7968\>.

      \;

      <subsection|\<#5B9E\>\<#65BD\>\<#8303\>\<#56F4\>>

      <strong|>

      \<#8BD5\>\<#70B9\>\<#521D\>\<#671F\>\<#FF0C\>\<#6CAA\>\<#80A1\>\<#901A\>\<#7684\>\<#80A1\>\<#7968\>\<#8303\>\<#56F4\>\<#662F\>\<#4E0A\>\<#6D77\>\<#8BC1\>\<#5238\>\<#4EA4\>\<#6613\>\<#6240\>\<#4E0A\>\<#8BC1\>180\<#6307\>\<#6570\>\<#3001\>\<#4E0A\>\<#8BC1\>380\<#6307\>\<#6570\>\<#7684\>\<#6210\>\<#4EFD\>\<#80A1\>\<#FF0C\>\<#4EE5\>\<#53CA\>

      \<#4E0A\>\<#6D77\>\<#8BC1\>\<#5238\>\<#4EA4\>\<#6613\>\<#6240\>\<#4E0A\>\<#5E02\>\<#7684\>A+H\<#80A1\>\<#516C\>\<#53F8\>\<#80A1\>\<#7968\>\<#3002\>\<#6E2F\>\<#80A1\>\<#901A\>\<#7684\>\<#80A1\>\<#7968\>\<#8303\>\<#56F4\>\<#662F\>\<#9999\>\<#6E2F\>\<#8054\>\<#5408\>\<#4EA4\>\<#6613\>\<#6240\>\<#6052\>\<#751F\>\<#7EFC\>\<#5408\>\<#5927\>\<#578B\>\<#80A1\>

      \<#6307\>\<#6570\>\<#3001\>\<#6052\>\<#751F\>\<#7EFC\>\<#5408\>\<#4E2D\>\<#578B\>\<#80A1\>\<#6307\>\<#6570\>\<#7684\>\<#6210\>\<#4EFD\>\<#80A1\>\<#548C\>\<#540C\>\<#65F6\>\<#5728\>\<#9999\>\<#6E2F\>\<#8054\>\<#5408\>\<#4EA4\>\<#6613\>\<#6240\>\<#3001\>\<#4E0A\>\<#6D77\>\<#8BC1\>\<#5238\>\<#4EA4\>\<#6613\>\<#6240\>\<#4E0A\>\<#5E02\>\<#7684\>A+H\<#80A1\>

      \<#516C\>\<#53F8\>\<#80A1\>\<#7968\>\<#3002\>

      \<#53CC\>\<#65B9\>\<#53EF\>\<#6839\>\<#636E\>\<#8BD5\>\<#70B9\>\<#60C5\>\<#51B5\>\<#5BF9\>\<#6295\>\<#8D44\>\<#6807\>\<#7684\>\<#8303\>\<#56F4\>\<#8FDB\>\<#884C\>\<#8C03\>\<#6574\>\<#3002\>

      \;

      \;

      <strong|<subsection|\<#8BD5\>\<#70B9\>\<#6761\>\<#4EF6\>>>

      \<#8BD5\>\<#70B9\>\<#521D\>\<#671F\>\<#FF0C\>\<#9999\>\<#6E2F\>\<#8BC1\>\<#76D1\>\<#4F1A\>\<#8981\>\<#6C42\>\<#53C2\>\<#4E0E\>\<#6E2F\>\<#80A1\>\<#901A\>\<#7684\>\<#5883\>\<#5185\>\<#6295\>\<#8D44\>\<#8005\>\<#4EC5\>\<#9650\>\<#4E8E\>\<#673A\>\<#6784\>\<#6295\>\<#8D44\>\<#8005\>\<#FF0C\>\<#53CA\>\<#8BC1\>\<#5238\>\<#5E10\>\<#6237\>\<#53CA\>\<#8D44\>\<#91D1\>

      \<#5E10\>\<#6237\>\<#4F59\>\<#989D\>\<#5408\>\<#8BA1\>\<#4E0D\>\<#4F4E\>\<#4E8E\>50\<#4E07\>\<#5143\>\<#7684\>\<#4E2A\>\<#4EBA\>\<#6295\>\<#8D44\>\<#8005\>\<#3002\>

      \;

      \;

      <samp|<subsection|\<#5F71\>\<#54CD\>>>

      \<#6CAA\>\<#6E2F\>\<#901A\>\<#662F\>\<#4E2D\>\<#56FD\>\<#8D44\>\<#672C\>\<#5E02\>\<#573A\>\<#5BF9\>\<#5916\>\<#5F00\>\<#653E\>\<#7684\>\<#91CD\>\<#8981\>\<#5185\>\<#5BB9\>\<#FF0C\>\<#6709\>\<#5229\>\<#4E8E\>\<#52A0\>\<#5F3A\>\<#4E24\>\<#5730\>\<#8D44\>\<#672C\>\<#5E02\>\<#573A\>\<#8054\>\<#7CFB\>\<#FF0C\>\<#63A8\>\<#52A8\>\<#8D44\>\<#672C\>\<#5E02\>\<#573A\>

      \<#53CC\>\<#5411\>\<#5F00\>\<#653E\>\<#FF0C\>\<#5177\>\<#6709\>\<#4EE5\>\<#4E0B\>\<#4E09\>\<#65B9\>\<#9762\>\<#79EF\>\<#6781\>\<#610F\>\<#4E49\>\<#FF1A\>

      \<#FF08\>\<#4E00\>\<#FF09\>\<#6709\>\<#5229\>\<#4E8E\>\<#901A\>\<#8FC7\>\<#4E00\>\<#9879\>\<#5168\>\<#65B0\>\<#7684\>\<#5408\>\<#4F5C\>\<#673A\>\<#5236\>\<#589E\>\<#5F3A\>\<#6211\>\<#56FD\>\<#8D44\>\<#672C\>\<#5E02\>\<#573A\>\<#7684\>\<#7EFC\>\<#5408\>\<#5B9E\>\<#529B\>\<#3002\>\<#6CAA\>\<#6E2F\>\<#901A\>\<#53EF\>\<#4EE5\>\<#6DF1\>\<#5316\>\<#4EA4\>\<#6D41\>

      \<#5408\>\<#4F5C\>\<#FF0C\>\<#6269\>\<#5927\>\<#4E24\>\<#5730\>\<#6295\>\<#8D44\>\<#8005\>\<#7684\>\<#6295\>\<#8D44\>\<#6E20\>\<#9053\>\<#FF0C\>\<#63D0\>\<#5347\>\<#5E02\>\<#573A\>\<#7ADE\>\<#4E89\>\<#529B\>\<#3002\>

      \<#FF08\>\<#4E8C\>\<#FF09\>\<#6709\>\<#5229\>\<#4E8E\>\<#5DE9\>\<#56FA\>\<#4E0A\>\<#6D77\>\<#548C\>\<#9999\>\<#6E2F\>\<#4E24\>\<#4E2A\>\<#91D1\>\<#878D\>\<#4E2D\>\<#5FC3\>\<#7684\>\<#5730\>\<#4F4D\>\<#3002\>\<#6CAA\>\<#6E2F\>\<#901A\>\<#6709\>\<#52A9\>\<#4E8E\>\<#63D0\>\<#9AD8\>\<#4E0A\>\<#6D77\>\<#53CA\>\<#9999\>\<#6E2F\>\<#4E24\>\<#5730\>\<#5E02\>\<#573A\>

      \<#5BF9\>\<#56FD\>\<#9645\>\<#6295\>\<#8D44\>\<#8005\>\<#7684\>\<#5438\>\<#5F15\>\<#529B\>\<#FF0C\>\<#6709\>\<#5229\>\<#4E8E\>\<#6539\>\<#5584\>\<#4E0A\>\<#6D77\>\<#5E02\>\<#573A\>\<#7684\>\<#6295\>\<#8D44\>\<#8005\>\<#7ED3\>\<#6784\>\<#FF0C\>\<#8FDB\>\<#4E00\>\<#6B65\>\<#63A8\>\<#8FDB\>\<#4E0A\>\<#6D77\>\<#56FD\>\<#9645\>\<#91D1\>\<#878D\>\<#4E2D\>\<#5FC3\>

      \<#5EFA\>\<#8BBE\>\<#FF1B\>\<#540C\>\<#65F6\>\<#6709\>\<#5229\>\<#4E8E\>\<#9999\>\<#6E2F\>\<#53D1\>\<#5C55\>\<#6210\>\<#4E3A\>\<#5185\>\<#5730\>\<#6295\>\<#8D44\>\<#8005\>\<#91CD\>\<#8981\>\<#7684\>\<#5883\>\<#5916\>\<#6295\>\<#8D44\>\<#5E02\>\<#573A\>\<#FF0C\>\<#5DE9\>\<#56FA\>\<#548C\>\<#63D0\>\<#5347\>\<#9999\>\<#6E2F\>\<#7684\>\<#56FD\>\<#9645\>\<#91D1\>

      \<#878D\>\<#4E2D\>\<#5FC3\>\<#5730\>\<#4F4D\>\<#3002\>

      \<#FF08\>\<#4E09\>\<#FF09\>\<#6709\>\<#5229\>\<#4E8E\>\<#63A8\>\<#52A8\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#56FD\>\<#9645\>\<#5316\>\<#FF0C\>\<#652F\>\<#6301\>\<#9999\>\<#6E2F\>\<#53D1\>\<#5C55\>\<#6210\>\<#4E3A\>\<#79BB\>\<#5CB8\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#4E1A\>\<#52A1\>\<#4E2D\>\<#5FC3\>\<#3002\>\<#6CAA\>\<#6E2F\>\<#901A\>\<#65E2\>\<#53EF\>\<#65B9\>\<#4FBF\>

      \<#5185\>\<#5730\>\<#6295\>\<#8D44\>\<#8005\>\<#76F4\>\<#63A5\>\<#4F7F\>\<#7528\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#6295\>\<#8D44\>\<#9999\>\<#6E2F\>\<#5E02\>\<#573A\>\<#FF0C\>\<#4E5F\>\<#53EF\>\<#589E\>\<#52A0\>\<#5883\>\<#5916\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#8D44\>\<#91D1\>\<#7684\>\<#6295\>\<#8D44\>\<#6E20\>\<#9053\>\<#FF0C\>\<#4FBF\>\<#5229\>\<#4EBA\>\<#6C11\>

      \<#5E01\>\<#5728\>\<#4E24\>\<#5730\>\<#7684\>\<#6709\>\<#5E8F\>\<#6D41\>\<#52A8\>\<#3002\>

      \;

      \<#6781\>\<#7AEF\>\<#60C5\>\<#51B5\>\<#53EF\>\<#80FD\>\<#6682\>\<#505C\>

      \;

      \<#6E2F\>\<#4EA4\>\<#6240\>\<#80A1\>\<#672C\>\<#8BC1\>\<#5238\>\<#4E0E\>\<#5B9A\>\<#606F\>\<#4EA7\>\<#54C1\>\<#53CA\>\<#8D27\>\<#5E01\>\<#8054\>\<#5E2D\>\<#4E3B\>\<#7BA1\>\<#9648\>\<#79C9\>\<#5F3A\>2014\<#5E74\>5\<#6708\>8\<#65E5\>\<#8868\>\<#793A\>\<#FF0C\>\<#4E00\>\<#65E6\>\<#51FA\>\<#73B0\>\<#6781\>\<#7AEF\>\<#60C5\>\<#51B5\>\<#FF0C\>

      \P\<#6CAA\>\<#6E2F\>\<#901A\>\Q\<#7684\>\<#673A\>\<#5236\>\<#53EF\>\<#4EE5\>\<#6682\>\<#505C\>\<#3002\>

      \<#9648\>\<#79C9\>\<#5F3A\>\<#5728\>2014\<#5E74\>5\<#6708\>8\<#65E5\>\<#51FA\>\<#5E2D\>\<#6CAA\>\<#6E2F\>\<#901A\>\<#4F20\>\<#5A92\>\<#7814\>\<#8BA8\>\<#4F1A\>\<#65F6\>\<#8FD8\>\<#8868\>\<#793A\>\<#FF0C\>\<#6CAA\>\<#6E2F\>\<#901A\>\<#5728\>5\<#6708\>\<#81F3\>8\<#6708\>\<#671F\>\<#95F4\>\<#4E3E\>\<#884C\>\<#53C2\>\<#4E0E\>\<#8005\>

      \<#63A8\>\<#4ECB\>\<#4F1A\>\<#FF0C\>\<#5E76\>\<#4F1A\>\<#8981\>\<#6C42\>\<#53C2\>\<#4E0E\>\<#8005\>\<#63D0\>\<#4EA4\>\<#610F\>\<#5411\>\<#4E66\>\<#FF0C\>9\<#6708\>\<#4EFD\>\<#5C06\>\<#4F1A\>\<#9080\>\<#8BF7\>\<#53C2\>\<#4E0E\>\<#8005\>\<#8FDB\>\<#884C\>\<#5E02\>\<#573A\>\<#6F14\>\<#4E60\>\<#FF0C\>\<#4EE5\>\<#786E\>\<#4FDD\>\<#5E02\>\<#573A\>\<#6709\>\<#8DB3\>

      \<#591F\>\<#7684\>\<#51C6\>\<#5907\>\<#3002\>\<#9648\>\<#79C9\>\<#5F3A\>\<#6307\>\<#51FA\>\<#FF0C\>\P\<#6CAA\>\<#6E2F\>\<#901A\>\Q\<#7684\>\<#673A\>\<#5236\>\<#4E0B\>\<#FF0C\>\<#603B\>\<#989D\>\<#5EA6\>\<#4E3A\>3000\<#4EBF\>\<#5143\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#FF0C\>\<#76F8\>\<#5BF9\>\<#4E8E\>A\<#80A1\>\<#5E02\>\<#503C\>\<#FF0C\>

      \<#53EA\>\<#6709\>1%\<#5DE6\>\<#53F3\>\<#FF0C\>\<#9884\>\<#8BA1\>\<#4E0D\>\<#4F1A\>\<#5BF9\>A\<#80A1\>\<#6784\>\<#6210\>\<#5927\>\<#6CE2\>\<#52A8\>\<#3002\>\<#4E0D\>\<#8FC7\>\<#FF0C\>\<#4E00\>\<#65E6\>\<#51FA\>\<#73B0\>\<#6781\>\<#7AEF\>\<#60C5\>\<#51B5\>\<#FF0C\>\<#5FC5\>\<#8981\>\<#65F6\>\P\<#6CAA\>\<#6E2F\>\<#901A\>\Q\<#7684\>\<#673A\>

      \<#5236\>\<#53EF\>\<#4EE5\>\<#6682\>\<#505C\>\<#3002\>\<#4F46\>\<#4ED6\>\<#6307\>\<#51FA\>\<#FF0C\>\<#6682\>\<#505C\>\P\<#6CAA\>\<#6E2F\>\<#901A\>\Q\<#673A\>\<#5236\>\<#662F\>\<#6700\>\<#540E\>\<#7684\>\<#9632\>\<#7EBF\>\<#FF0C\>\<#5728\>\<#6781\>\<#7AEF\>\<#7684\>\<#60C5\>\<#51B5\>\<#4E0B\>\<#624D\>\<#4F1A\>\<#4F7F\>\<#7528\>\<#FF0C\>\<#5982\>

      \<#679C\>\<#6709\>\<#4E2A\>\<#522B\>\<#80A1\>\<#7968\>\<#4EA6\>\<#6D89\>\<#53CA\>\<#6781\>\<#7AEF\>\<#64CD\>\<#4F5C\>\<#7684\>\<#8BDD\>\<#FF0C\>\<#4EA6\>\<#53EF\>\<#56E0\>\<#5E94\>\<#5F53\>\<#65F6\>\<#60C5\>\<#51B5\>\<#5173\>\<#95ED\>\<#4EA4\>\<#6613\>\<#901A\>\<#9053\>\<#3002\>

      \<#5728\>\<#4EA4\>\<#6613\>\<#65B9\>\<#9762\>\<#FF0C\>\<#6CAA\>\<#6E2F\>\<#901A\>\<#53EA\>\<#80FD\>\<#5728\>\<#4E8C\>\<#7EA7\>\<#5E02\>\<#573A\>\<#8FDB\>\<#884C\>\<#4EA4\>\<#6613\>\<#FF0C\>\<#5728\>\<#73B0\>\<#884C\>\<#673A\>\<#5236\>\<#4E0B\>\<#FF0C\>\<#989D\>\<#5EA6\>\<#5229\>\<#7528\>\<#6309\>\<#5148\>\<#5230\>\<#5148\>\<#5F97\>\<#539F\>\<#5219\>\<#FF0C\>\<#6B64\>

      \<#5916\>\<#FF0C\>\<#53EA\>\<#6709\>\<#4E70\>\<#76D8\>\<#624D\>\<#53D7\>\<#989D\>\<#5EA6\>\<#76D1\>\<#63A7\>\<#FF0C\>\<#6295\>\<#8D44\>\<#8005\>\<#5728\>\<#4EFB\>\<#4F55\>\<#65F6\>\<#5019\>\<#FF0C\>\<#4E0D\>\<#8BBA\>\<#989D\>\<#5EA6\>\<#6C34\>\<#51C6\>\<#FF0C\>\<#90FD\>\<#53EF\>\<#8F93\>\<#5165\>\<#5356\>\<#76D8\>\<#3002\>\<#5728\>\<#4E24\>\<#5730\>\<#5047\>\<#671F\>

      \<#4EA4\>\<#6613\>\<#5B89\>\<#6392\>\<#4E0A\>\<#FF0C\>\<#5982\>\<#679C\>\<#6B3E\>\<#9879\>\<#4EA4\>\<#6536\>\<#65E5\>\<#9999\>\<#6E2F\>\<#5E02\>\<#573A\>\<#4E0D\>\<#5F00\>\<#5E02\>\<#FF0C\>\<#6CAA\>\<#80A1\>\<#901A\>\<#5728\>\<#6B64\>\<#524D\>\<#4E00\>\<#4E2A\>\<#4EA4\>\<#6613\>\<#65E5\>\<#4E5F\>\<#5C06\>\<#4E0D\>\<#5F00\>\<#653E\>\<#4EA4\>\<#6613\>\<#3002\>

      \<#6E2F\>\<#4EA4\>\<#6240\>\<#8868\>\<#793A\>\<#FF0C\>\<#6839\>\<#636E\>\<#4E0E\>\<#4E24\>\<#5730\>\<#94F6\>\<#884C\>\<#7684\>\<#6C9F\>\<#901A\>\<#8FDB\>\<#5C55\>\<#FF0C\>\<#5C06\>\<#8FDB\>\<#4E00\>\<#6B65\>\<#63D0\>\<#5347\>\<#6CAA\>\<#6E2F\>\<#901A\>\<#6A21\>\<#5F0F\>\<#FF0C\>\<#5E0C\>\<#671B\>\<#672A\>\<#6765\>\<#53EF\>\<#4EE5\>\<#5B9E\>\<#73B0\>\<#5404\>\<#5E02\>

      \<#573A\>\<#6295\>\<#8D44\>\<#8005\>\<#5747\>\<#53EF\>\<#5B8C\>\<#5168\>\<#6309\>\<#7167\>\<#5BF9\>\<#65B9\>\<#5E02\>\<#573A\>\<#7684\>\<#4EA4\>\<#6613\>\<#65E5\>\<#8FDB\>\<#884C\>\<#4EA4\>\<#6613\>\<#3002\>

      \<#9648\>\<#79C9\>\<#5F3A\>\<#8868\>\<#793A\>\<#FF0C\>\<#4E92\>\<#8054\>\<#4E92\>\<#901A\>\<#6709\>\<#52A9\>\<#4E8E\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#8D44\>\<#91D1\>\<#53CC\>\<#5411\>\<#6D41\>\<#52A8\>\<#FF0C\>\<#5B8C\>\<#5584\>\<#8D44\>\<#91D1\>\<#6C60\>\<#7684\>\<#5FAA\>\<#73AF\>\<#FF0C\>\<#9884\>\<#8BA1\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#5151\>\<#6362\>\<#4E1A\>\<#52A1\>

      \<#7684\>\<#6DF1\>\<#5EA6\>\<#5C06\>\<#4F1A\>\<#589E\>\<#52A0\>\<#3002\>\<#81F3\>\<#4E8E\>\<#79BB\>\<#5CB8\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#8D44\>\<#91D1\>\<#6C60\>\<#662F\>\<#5426\>\<#4F1A\>\<#76F8\>\<#5E94\>\<#589E\>\<#5927\>\<#FF0C\>\<#4ED6\>\<#8868\>\<#793A\>\<#FF0C\>\<#8FD9\>\<#5C06\>\<#89C6\>\<#4E4E\>\<#6D41\>\<#5165\>\<#6D41\>\<#51FA\>\<#76F8\>\<#5BF9\>\<#6BD4\>

      \<#4F8B\>\<#FF0C\>\<#53EF\>\<#80FD\>\<#4F1A\>\<#589E\>\<#52A0\>\<#79BB\>\<#5CB8\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#5151\>\<#6362\>\<#5E02\>\<#573A\>\<#7684\>\<#89C4\>\<#6A21\>\<#FF0C\>\<#800C\>\<#5BF9\>\<#79BB\>\<#5CB8\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#8D44\>\<#91D1\>\<#6C60\>\<#7684\>\<#5F71\>\<#54CD\>\<#4E5F\>\<#5C06\>\<#662F\>\<#6B63\>\<#9762\>\<#7684\>\<#3002\>

      \<#9648\>\<#79C9\>\<#5F3A\>\<#8BA4\>\<#4E3A\>\<#FF0C\>\<#6CAA\>\<#80A1\>\<#901A\>\<#653F\>\<#7B56\>\<#63A8\>\<#884C\>\<#540E\>\<#FF0C\>\<#5236\>\<#5EA6\>\<#6210\>\<#672C\>\<#4F1A\>\<#9010\>\<#6E10\>\<#51CF\>\<#5C11\>\<#FF0C\>\<#5BF9\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#53D1\>\<#5C55\>\<#6709\>\<#6B63\>\<#9762\>\<#5F71\>\<#54CD\>\<#53CA\>\<#521B\>\<#9020\>\<#6709\>\<#5229\>

      \<#6761\>\<#4EF6\>\<#FF0C\>\<#76F8\>\<#4FE1\>\<#4F1A\>\<#6709\>\<#76F8\>\<#5173\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#7684\>\<#5B9A\>\<#4EF7\>\<#4EA7\>\<#54C1\>\<#51FA\>\<#73B0\>\<#3002\>

      \<#9648\>\<#79C9\>\<#5F3A\>\<#8868\>\<#793A\>\<#FF0C\>\<#76EE\>\<#524D\>\<#94F6\>\<#884C\>\<#4E0E\>\<#4E2A\>\<#4EBA\>\<#6BCF\>\<#65E5\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#5151\>\<#6362\>\<#4E0A\>\<#9650\>\<#7684\>\<#9650\>\<#5236\>\<#4E0D\>\<#9002\>\<#7528\>\<#4E8E\>\<#5238\>\<#5546\>\<#FF0C\>\<#56E0\>\<#4E3A\>\<#5238\>\<#5546\>\<#4E0D\>\<#5C5E\>\<#4E8E\>\<#94F6\>\<#884C\>

      \<#4F53\>\<#7CFB\>\<#FF0C\>\<#5176\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#5151\>\<#6362\>\<#4E0D\>\<#4F1A\>\<#5F71\>\<#54CD\>\<#4EBA\>\<#6C11\>\<#5E01\>\<#8D44\>\<#91D1\>\<#6C60\>\<#7684\>\<#5B9A\>\<#989D\>\<#3002\>
    </with>
  </with>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <new-page>

  \;

  \;

  <\list-of-figures|figure>
    <glossary-1|Volatility Smile and Skew |<pageref|auto-4>>

    <glossary-1|Volatility Term Structure|<pageref|auto-5>>

    <glossary-1|Volatility Smile|<pageref|auto-8>>

    <glossary-1|CRR Convergence|<pageref|auto-13>>

    <glossary-1|JR Convergence|<pageref|auto-14>>

    <glossary-1|TIAN Convergence|<pageref|auto-15>>

    <glossary-1|Convergence of LR|<pageref|auto-19>>

    <glossary-1|Sawtooth Effect|<pageref|auto-22>>

    <glossary-1|odd-even effect|<pageref|auto-23>>

    <glossary-1|periodic humps effect|<pageref|auto-24>>

    <glossary-1|Report 1|<pageref|auto-27>>

    <glossary-1|Report 2|<pageref|auto-28>>

    <glossary-1|Report 3|<pageref|auto-29>>

    <glossary-1|Payoff per share|<pageref|auto-30>>

    <glossary-1|DuPont analysis|<pageref|auto-33>>

    <glossary-1|Comparison of growth|<pageref|auto-34>>

    <glossary-1|Performance in Market|<pageref|auto-36>>

    <glossary-1|Percentages|<pageref|auto-37>>
  </list-of-figures>

  \;

  \;

  \;

  <\bibliography|bib|tm-plain|ref>
    <\bib-list|13>
      <bibitem*|1><label|bib-cox1979option>John C<nbsp>Cox, Stephen
      A<nbsp>Ross<localize| and >Mark<nbsp>Rubinstein.<newblock> Option
      pricing: a simplified approach.<newblock>
      <with|font-shape|italic|Journal of financial Economics>, 7(3):229--263,
      1979.<newblock>

      <bibitem*|2><label|bib-copson1965asymptotic>Edward
      Thomas<nbsp>Copson<localize| and >Edward Thomas<nbsp>Copson.<newblock>
      <with|font-shape|italic|Asymptotic expansions>.<newblock>
      <localize|Number><nbsp>55. Cambridge University Press, 1965.<newblock>

      <bibitem*|3><label|bib-diener2004asymptotics>Francine<nbsp>Diener<localize|
      and >MARC<nbsp>Diener.<newblock> Asymptotics of the price oscillations
      of a european call option in a tree model.<newblock>
      <with|font-shape|italic|Mathematical finance>, 14(2):271--293,
      2004.<newblock>

      <bibitem*|4><label|bib-SPXPM>Yahoo<nbsp>Finance.<newblock>
      <tformat|<table|<row|<cell|S>|<cell|p 500 pm settled index
      (SPXPM)>>>>.<newblock> <tformat|<table|<row|<cell|http://finance.yahoo.com/q/op?s=%5ESPXPM>|<cell|m=2014-07>>>>,
      2014.<newblock>

      <bibitem*|5><label|bib-libor>Global-rates.com.<newblock> Usd libor
      interest rate - us dollar libor.<newblock>
      http://global-rates.com/interest-rates/libor/american-dollar/american-dollar.aspx,
      2013.<newblock>

      <bibitem*|6><label|bib-joshi2009achieving>Mark S<nbsp>Joshi.<newblock>
      Achieving smooth asymptotics for the prices of european options in
      binomial trees.<newblock> <with|font-shape|italic|Quantitative
      Finance>, 9(2):171--176, 2009.<newblock>

      <bibitem*|7><label|bib-joshi2010achieving>Mark S<nbsp>Joshi.<newblock>
      Achieving higher order convergence for the prices of european options
      in binomial trees.<newblock> <with|font-shape|italic|Mathematical
      Finance>, 20(1):89--103, 2010.<newblock>

      <bibitem*|8><label|bib-jroption1983>Rudd A.<nbsp>Jarrow R.<newblock>
      <with|font-shape|italic|Option Pricing>.<newblock> Homewood,Illinois,
      1983.<newblock>

      <bibitem*|9><label|bib-lamberton1998error>Damien<nbsp>Lamberton
      et<nbsp>al.<newblock> Error estimates for the binomial approximation of
      american put options.<newblock> <with|font-shape|italic|The Annals of
      Applied Probability>, 8(1):206--233, 1998.<newblock>

      <bibitem*|10><label|bib-leisen1998pricing>Dietmar
      PJ<nbsp>Leisen.<newblock> Pricing the american put option: a detailed
      convergence analysis for binomial models.<newblock>
      <with|font-shape|italic|Journal of Economic Dynamics and Control>,
      22(8-9):1419--1444, 1998.<newblock>

      <bibitem*|11><label|bib-leisen1996binomial>Dietmar
      PJ<nbsp>Leisen<localize| and >Matthias<nbsp>Reimer.<newblock> Binomial
      models for option valuation-examining and improving
      convergence.<newblock> <with|font-shape|italic|Applied Mathematical
      Finance>, 3(4):319--346, 1996.<newblock>

      <bibitem*|12><label|bib-tian1993modified>Yisong<nbsp>Tian.<newblock> A
      modified lattice approach to option pricing.<newblock>
      <with|font-shape|italic|Journal of Futures Markets>, 13(5):563--577,
      1993.<newblock>

      <bibitem*|13><label|bib-volitilitysmilewiki>WikiPedia.<newblock>
      Volatility smile.<newblock> http://en.wikipedia.org/wiki/Volatility_smile,
      2014.<newblock>
    </bib-list>
  </bibliography>
</body>

<\initial>
  <\collection>
    <associate|font|times>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-10|<tuple|2|5>>
    <associate|auto-11|<tuple|2.1|5>>
    <associate|auto-12|<tuple|2.2|6>>
    <associate|auto-13|<tuple|4|9>>
    <associate|auto-14|<tuple|5|10>>
    <associate|auto-15|<tuple|6|10>>
    <associate|auto-16|<tuple|2.3|11>>
    <associate|auto-17|<tuple|2.3.1|11>>
    <associate|auto-18|<tuple|2.3.2|12>>
    <associate|auto-19|<tuple|7|12>>
    <associate|auto-2|<tuple|1.1|2>>
    <associate|auto-20|<tuple|2.4|12>>
    <associate|auto-21|<tuple|2.5|13>>
    <associate|auto-22|<tuple|8|13>>
    <associate|auto-23|<tuple|9|14>>
    <associate|auto-24|<tuple|10|14>>
    <associate|auto-25|<tuple|3|15>>
    <associate|auto-26|<tuple|3.1|15>>
    <associate|auto-27|<tuple|11|15>>
    <associate|auto-28|<tuple|12|15>>
    <associate|auto-29|<tuple|13|15>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-30|<tuple|14|15>>
    <associate|auto-31|<tuple|3.1.1|16>>
    <associate|auto-32|<tuple|3.1.2|16>>
    <associate|auto-33|<tuple|15|16>>
    <associate|auto-34|<tuple|16|16>>
    <associate|auto-35|<tuple|3.1.3|16>>
    <associate|auto-36|<tuple|17|17>>
    <associate|auto-37|<tuple|18|17>>
    <associate|auto-38|<tuple|3.2|18>>
    <associate|auto-39|<tuple|3.3|18>>
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-40|<tuple|3.3.1|18>>
    <associate|auto-41|<tuple|3.3.2|18>>
    <associate|auto-42|<tuple|4|20>>
    <associate|auto-43|<tuple|4.1|20>>
    <associate|auto-44|<tuple|4.2|20>>
    <associate|auto-45|<tuple|4.3|20>>
    <associate|auto-46|<tuple|4.4|20>>
    <associate|auto-47|<tuple|4.4|22>>
    <associate|auto-48|<tuple|4.4|22>>
    <associate|auto-49|<tuple|4.4|?>>
    <associate|auto-5|<tuple|2|2>>
    <associate|auto-6|<tuple|1.3|3>>
    <associate|auto-7|<tuple|1.4|3>>
    <associate|auto-8|<tuple|3|4>>
    <associate|auto-9|<tuple|1.5|4>>
    <associate|bib-SPXPM|<tuple|4|22>>
    <associate|bib-copson1965asymptotic|<tuple|2|22>>
    <associate|bib-cox1979option|<tuple|1|22>>
    <associate|bib-diener2004asymptotics|<tuple|3|22>>
    <associate|bib-joshi2009achieving|<tuple|6|22>>
    <associate|bib-joshi2010achieving|<tuple|7|22>>
    <associate|bib-jroption1983|<tuple|8|22>>
    <associate|bib-lamberton1998error|<tuple|9|22>>
    <associate|bib-leisen1996binomial|<tuple|11|22>>
    <associate|bib-leisen1998pricing|<tuple|10|22>>
    <associate|bib-libor|<tuple|5|22>>
    <associate|bib-tian1993modified|<tuple|12|22>>
    <associate|bib-volitilitysmilewiki|<tuple|13|22>>
    <associate|eqn5|<tuple|7|11>>
    <associate|eqnmatre|<tuple|1|5>>
    <associate|eqnmatva|<tuple|2|5>>
    <associate|fig3|<tuple|3|4>>
    <associate|lem13|<tuple|16|9>>
    <associate|lem14|<tuple|17|9>>
    <associate|thm6|<tuple|8|7>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|bib>
      volitilitysmilewiki

      SPXPM

      libor

      cox1979option

      jroption1983

      tian1993modified

      leisen1996binomial

      leisen1996binomial

      leisen1996binomial

      diener2004asymptotics

      leisen1996binomial

      joshi2009achieving

      joshi2010achieving

      copson1965asymptotic

      leisen1998pricing

      lamberton1998error

      leisen1998pricing
    </associate>
    <\associate|figure>
      <tuple|normal|Volatility Smile and Skew |<pageref|auto-4>>

      <tuple|normal|Volatility Term Structure|<pageref|auto-5>>

      <tuple|normal|Volatility Smile|<pageref|auto-8>>

      <tuple|normal|CRR Convergence|<pageref|auto-13>>

      <tuple|normal|JR Convergence|<pageref|auto-14>>

      <tuple|normal|TIAN Convergence|<pageref|auto-15>>

      <tuple|normal|Convergence of LR|<pageref|auto-19>>

      <tuple|normal|Sawtooth Effect|<pageref|auto-22>>

      <tuple|normal|odd-even effect|<pageref|auto-23>>

      <\tuple|normal>
        periodic humps effect
      </tuple|<pageref|auto-24>>

      <tuple|normal|Report 1|<pageref|auto-27>>

      <tuple|normal|Report 2|<pageref|auto-28>>

      <tuple|normal|Report 3|<pageref|auto-29>>

      <tuple|normal|Payoff per share|<pageref|auto-30>>

      <tuple|normal|DuPont analysis|<pageref|auto-33>>

      <tuple|normal|Comparison of growth|<pageref|auto-34>>

      <tuple|normal|Performance in Market|<pageref|auto-36>>

      <tuple|normal|Percentages|<pageref|auto-37>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.<space|2spc>Implied
      Volatility> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1.<space|2spc>Introducing Implied
      Volatility <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2.<space|2spc>Introducing Volatility
      Smile, Volatility Term Structure and Volatility Surface
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3.<space|2spc>Data source and related
      data issue <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.4.<space|2spc>Code and Result
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.5.<space|2spc>Discussion: Explanation of
      Implied Volatility Gap <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.<space|2spc>Convergence
      of Binomial Method for Option Valuation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1.<space|2spc>Introduction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|2.2.<space|2spc>CRR, JR and Tian for
      European Option converge with order 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|2.3.<space|2spc>Higher order Binomial
      Method for European Option Valuation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|2.3.1.<space|2spc>Asympototic expansions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|2tab>|2.3.2.<space|2spc>Leisen-Reimer Tree
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>>

      <with|par-left|<quote|1tab>|2.4.<space|2spc>Convergence of Ammerican
      Put Options <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|2.5.<space|2spc>Sawtooth and periodic humps
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.<space|2spc>ZNJS>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1.<space|2spc>Financial report on ZNJS
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|2tab>|3.1.1.<space|2spc>Four Principles in
      investing <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31>>

      <with|par-left|<quote|2tab>|3.1.2.<space|2spc>Comparison in the
      industry <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|2tab>|3.1.3.<space|2spc>Problems
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>

      <with|par-left|<quote|1tab>|3.2.<space|2spc>Prediction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|3.3.<space|2spc>Determination of the option
      price of ZNJS <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-39>>

      <with|par-left|<quote|2tab>|3.3.1.<space|2spc>Evaluation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>

      <with|par-left|<quote|2tab>|3.3.2.<space|2spc>Application
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.<space|2spc><with|font|<quote|simfang>|<with|font|<quote|simkai>|\<#6CAA\>\<#6E2F\>\<#901A\>>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42><vspace|0.5fn>

      <with|par-left|<quote|1tab>|4.1.<space|2spc>\<#7EC4\>\<#6210\>\<#90E8\>\<#5206\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|1tab>|4.2.<space|2spc>\<#5B9E\>\<#65BD\>\<#8303\>\<#56F4\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>>

      <with|par-left|<quote|1tab>|4.3.<space|2spc>\<#8BD5\>\<#70B9\>\<#6761\>\<#4EF6\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>>

      <with|par-left|<quote|1tab>|4.4.<space|2spc>\<#5F71\>\<#54CD\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|List
      of figures> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Bibliography>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>