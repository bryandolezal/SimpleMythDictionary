TRN]        �        	               S M D _ X S _ I n j e c t o r ����                  Always    Always        true                XS: Code Snippet    XS Inject Start    
      CodeSnippet    CodeSnippet H      N         x s D i s a b l e R u l e ( " _ S M D _ X S _ I N J E C T O R " ) ;  
       t r D i s a b l e R u l e ( " S M D _ X S _ I N J E C T O R " ) ;  
 }    true       %CodeSnippet%             XS: Code Snippet    Camera Info    
      CodeSnippet    CodeSnippet H      7  c l a s s   C a m e r a I n f o  
 {  
         f l o a t [ ]   f l o a t V a l u e s   =   d e f a u l t ;  
 } ;  
  
 C a m e r a I n f o   s t r i n g T o C a m e r a I n f o ( s t r i n g   _ c a m e r a I n f o   =   " d e f a u l t " )  
 {  
         f l o a t [ ]   c a m F l o a t s   =   n e w   f l o a t ( 1 2 ,   0 ) ;  
         s t r i n g   c a m C u t   =   _ c a m e r a I n f o ;  
         i n t   a r r a y O f f s e t   =   0 ;  
  
         s t r i n g   v e c t o r S t r i n g   =   " " ;  
         i n t   c o m m a L o c   =   0 ;  
  
         f o r ( i n t   i   =   0 ;   i   <   4 ;   i + + )  
         {  
                 i n t   v e c t o r _ s t a r t   =   x s S t r i n g F i n d F i r s t ( c a m C u t ,   " ( " ,   0 ,   f a l s e ) ;  
                 i n t   v e c t o r _ e n d   =   x s S t r i n g F i n d F i r s t ( c a m C u t ,   " ) " ,   0 ,   f a l s e ) ;  
  
                 v e c t o r S t r i n g   =   x s S t r i n g S u b s t r i n g ( c a m C u t ,   v e c t o r _ s t a r t   +   1 ,   v e c t o r _ e n d   -   1 ) ;  
                 c a m C u t   =   x s S t r i n g S u b s t r i n g ( c a m C u t ,   v e c t o r _ e n d   +   3 ,   x s S t r i n g L e n g t h ( c a m C u t ) ) ;  
  
                 c o m m a L o c   =   x s S t r i n g F i n d F i r s t ( v e c t o r S t r i n g ,   " , " ,   0 ,   f a l s e ) ;  
                 c a m F l o a t s [ a r r a y O f f s e t ]   =   x s S t r i n g T o F l o a t ( x s S t r i n g S u b s t r i n g ( v e c t o r S t r i n g ,   0 ,   c o m m a L o c   -   1 ) ) ;  
                 a r r a y O f f s e t + + ;  
  
                 v e c t o r S t r i n g   =   x s S t r i n g S u b s t r i n g ( v e c t o r S t r i n g ,   c o m m a L o c   +   1 ,   x s S t r i n g L e n g t h ( v e c t o r S t r i n g ) ) ;  
                 c o m m a L o c   =   x s S t r i n g F i n d F i r s t ( v e c t o r S t r i n g ,   " , " ,   0 ,   f a l s e ) ;  
                 c a m F l o a t s [ a r r a y O f f s e t ]   =   x s S t r i n g T o F l o a t ( x s S t r i n g S u b s t r i n g ( v e c t o r S t r i n g ,   0 ,   c o m m a L o c   -   1 ) ) ;  
                 a r r a y O f f s e t + + ;  
  
                 v e c t o r S t r i n g   =   x s S t r i n g S u b s t r i n g ( v e c t o r S t r i n g ,   c o m m a L o c   +   1 ,   x s S t r i n g L e n g t h ( v e c t o r S t r i n g ) ) ;  
                 c a m F l o a t s [ a r r a y O f f s e t ]   =   x s S t r i n g T o F l o a t ( v e c t o r S t r i n g ) ;  
                 a r r a y O f f s e t + + ;  
         }  
  
         C a m e r a I n f o   c i ;  
         c i . f l o a t V a l u e s   =   c a m F l o a t s ;  
  
         r e t u r n   c i ;  
 }  
  
 s t r i n g   c a m e r a I n f o T o S t r i n g ( C a m e r a I n f o   _ c a m e r a I n f o )  
 {  
         s t r i n g   c a m e r a I n f o S t r i n g   =   " " ;  
  
         c a m e r a I n f o S t r i n g   + =   " v e c t o r ( "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 0 ]   +   " , "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 1 ]   +   " , "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 2 ]   +   " ) ,   " ;  
         c a m e r a I n f o S t r i n g   + =   " v e c t o r ( "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 3 ]   +   " , "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 4 ]   +   " , "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 5 ]   +   " ) ,   " ;  
         c a m e r a I n f o S t r i n g   + =   " v e c t o r ( "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 6 ]   +   " , "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 7 ]   +   " , "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 8 ]   +   " ) ,   " ;  
         c a m e r a I n f o S t r i n g   + =   " v e c t o r ( "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 9 ]   +   " , "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 1 0 ]   +   " , "   +   _ c a m e r a I n f o . f l o a t V a l u e s [ 1 1 ]   +   " ) " ;  
  
         r e t u r n   c a m e r a I n f o S t r i n g ;  
 }    true       %CodeSnippet%             XS: Code Snippet 
   UnitArray    
      CodeSnippet    CodeSnippet H        c l a s s   U n i t A r r a y  
 {  
         i n t [ ]   u n i t I D s   =   d e f a u l t ;  
 } ;  
  
 U n i t A r r a y   i n t A r r a y T o U n i t A r r a y ( i n t [ ]   _ u n i t A r r a y   =   d e f a u l t )  
 {  
         U n i t A r r a y   u a ;  
         u a . u n i t I D s   =   _ u n i t A r r a y ;  
  
         r e t u r n   u a ;  
 }  
  
 i n t [ ]   u n i t A r r a y T o I n t A r r a y ( U n i t A r r a y   _ u n i t A r r a y )  
 {  
         r e t u r n   _ u n i t A r r a y . u n i t I D s ;  
 }    true       %CodeSnippet%             XS: Code Snippet    Simple Myth Dictionary    
      CodeSnippet    CodeSnippet H      G  c l a s s   S i m p l e M y t h D i c t i o n a r y  
 {  
         i n t   M A X _ E N T R I E S   =   1 0 0 ;  
         b o o l   i n i t a l i z e d   =   f a l s e ;  
         i n t [ ]   k e y s   =   d e f a u l t ;  
         i n t [ ]   k e y V a l u e I n d i c e s   =   d e f a u l t ;  
         i n t   e n t r y C o u n t   =   0 ;  
  
         b o o l [ ]   b o o l V a l u e s   =   d e f a u l t ;  
         i n t [ ]   i n t V a l u e s   =   d e f a u l t ;  
         f l o a t [ ]   f l o a t V a l u e s   =   d e f a u l t ;  
         s t r i n g [ ]   s t r i n g V a l u e s   =   d e f a u l t ;  
         v e c t o r [ ]   v e c t o r V a l u e s   =   d e f a u l t ;  
         C a m e r a I n f o [ ]   c a m e r a I n f o V a l u e s   =   d e f a u l t ;  
         U n i t A r r a y [ ]   u n i t A r r a y V a l u e s   =   d e f a u l t ;  
  
         v o i d   I n i t a l i z e ( )  
         {  
                 i f   ( i n i t a l i z e d   = =   f a l s e )  
                 {  
                         k e y s   =   n e w   i n t ( M A X _ E N T R I E S ,   0 ) ;  
                         k e y V a l u e I n d i c e s   =   n e w   i n t ( M A X _ E N T R I E S ,   0 ) ;  
  
                         i n i t a l i z e d   =   t r u e ;  
                 }  
         }  
  
         i n t   G e t H a s h ( s t r i n g   k e y   =   " d e f a u l t " )  
         {  
                 r e t u r n   k b G e t A n i m a t i o n I D ( k e y ) ;  
         }  
  
         i n t   F i n d K e y F r o m H a s h ( i n t   h a s h   =   0 )  
         {  
                 f o r   ( i n t   i   =   0 ;   i   <   e n t r y C o u n t ;   i + + )  
                 {  
                         i f   ( k e y s [ i ]   = =   h a s h )  
                         {  
                                 r e t u r n   i ;  
                         }  
                 }  
                 r e t u r n   - 1 ;  
         }  
  
         i n t   F i n d K e y ( s t r i n g   k e y   =   " d e f a u l t " )  
         {  
                 i n t   h a s h   =   G e t H a s h ( k e y ) ;  
                 r e t u r n   F i n d K e y F r o m H a s h ( h a s h ) ;  
         }  
  
         i n t   A d d K e y ( s t r i n g   k e y   =   " d e f a u l t " )  
         {  
                 i n t   h a s h   =   G e t H a s h ( k e y ) ;  
  
                 / /   C h e c k   i f   k e y   a l r e a d y   e x i s t s  
                 i f ( F i n d K e y F r o m H a s h ( h a s h )   ! =   - 1 )  
                 {  
                         r e t u r n   - 1 ;  
                 }  
  
                 / /   C h e c k   i f   w e   h a v e   r o o m   f o r   m o r e   e n t r i e s  
                 i f ( e n t r y C o u n t   > =   M A X _ E N T R I E S )  
                 {  
                         r e t u r n   - 1 ;  
                 }  
  
                 i n t   i n d e x   =   e n t r y C o u n t ;  
                 k e y s [ i n d e x ]   =   h a s h ;  
                 e n t r y C o u n t + + ;  
                 r e t u r n   i n d e x ;  
         }  
 } ;    true       %CodeSnippet%             XS: Code Snippet    SMD API Start    
      CodeSnippet    CodeSnippet H         S i m p l e M y t h D i c t i o n a r y   _ _ s m d ;    true       %CodeSnippet%             XS: Code Snippet    SMD API Bool    
      CodeSnippet    CodeSnippet H      S  b o o l   s m d A d d B o o l ( s t r i n g   k e y   =   " d e f a u l t " ,   b o o l   v a l u e   =   f a l s e )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . A d d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 _ _ s m d . b o o l V a l u e s . a d d ( v a l u e ) ;  
                 _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ]   =   _ _ s m d . b o o l V a l u e s . s i z e ( )   -   1 ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 b o o l   s m d S e t B o o l ( s t r i n g   k e y   =   " d e f a u l t " ,   b o o l   v a l u e   =   f a l s e )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 _ _ s m d . b o o l V a l u e s [ v a l u e I n d e x ]   =   v a l u e ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 b o o l   s m d G e t B o o l ( s t r i n g   k e y   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f   ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 r e t u r n   _ _ s m d . b o o l V a l u e s [ v a l u e I n d e x ] ;  
         }  
  
         r e t u r n   f a l s e ;  
 }    true       %CodeSnippet%             XS: Code Snippet    SMD API Int    
      CodeSnippet    CodeSnippet H      =  b o o l   s m d A d d I n t ( s t r i n g   k e y   =   " d e f a u l t " ,   i n t   v a l u e   =   0 )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . A d d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 _ _ s m d . i n t V a l u e s . a d d ( v a l u e ) ;  
                 _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ]   =   _ _ s m d . i n t V a l u e s . s i z e ( )   -   1 ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 b o o l   s m d S e t I n t ( s t r i n g   k e y   =   " d e f a u l t " ,   i n t   v a l u e   =   0 )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 _ _ s m d . i n t V a l u e s [ v a l u e I n d e x ]   =   v a l u e ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 i n t   s m d G e t I n t ( s t r i n g   k e y   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f   ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 r e t u r n   _ _ s m d . i n t V a l u e s [ v a l u e I n d e x ] ;  
         }  
  
         r e t u r n   0 ;  
 }    true       %CodeSnippet%             XS: Code Snippet    SMD API Float    
      CodeSnippet    CodeSnippet H      W  b o o l   s m d A d d F l o a t ( s t r i n g   k e y   =   " d e f a u l t " ,   f l o a t   v a l u e   =   0 . 0 )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . A d d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 _ _ s m d . f l o a t V a l u e s . a d d ( v a l u e ) ;  
                 _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ]   =   _ _ s m d . f l o a t V a l u e s . s i z e ( )   -   1 ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 b o o l   s m d S e t F l o a t ( s t r i n g   k e y   =   " d e f a u l t " ,   f l o a t   v a l u e   =   0 . 0 )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 _ _ s m d . f l o a t V a l u e s [ v a l u e I n d e x ]   =   v a l u e ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 f l o a t   s m d G e t F l o a t ( s t r i n g   k e y   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f   ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 r e t u r n   _ _ s m d . f l o a t V a l u e s [ v a l u e I n d e x ] ;  
         }  
  
         r e t u r n   0 . 0 ;  
 }    true       %CodeSnippet%             XS: Code Snippet    SMD API String    
      CodeSnippet    CodeSnippet H      s  b o o l   s m d A d d S t r i n g ( s t r i n g   k e y   =   " d e f a u l t " ,   s t r i n g   v a l u e   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . A d d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 _ _ s m d . s t r i n g V a l u e s . a d d ( v a l u e ) ;  
                 _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ]   =   _ _ s m d . s t r i n g V a l u e s . s i z e ( )   -   1 ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 b o o l   s m d S e t S t r i n g ( s t r i n g   k e y   =   " d e f a u l t " ,   s t r i n g   v a l u e   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 _ _ s m d . s t r i n g V a l u e s [ v a l u e I n d e x ]   =   v a l u e ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 s t r i n g   s m d G e t S t r i n g ( s t r i n g   k e y   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f   ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 r e t u r n   _ _ s m d . s t r i n g V a l u e s [ v a l u e I n d e x ] ;  
         }  
  
         r e t u r n   " d e f a u l t " ;  
 }    true       %CodeSnippet%             XS: Code Snippet    SMD API Vector    
      CodeSnippet    CodeSnippet H        b o o l   s m d A d d V e c t o r ( s t r i n g   k e y   =   " d e f a u l t " ,   v e c t o r   v a l u e   =   c O r i g i n V e c t o r )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . A d d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 _ _ s m d . v e c t o r V a l u e s . a d d ( v a l u e ) ;  
                 _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ]   =   _ _ s m d . v e c t o r V a l u e s . s i z e ( )   -   1 ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 b o o l   s m d S e t V e c t o r ( s t r i n g   k e y   =   " d e f a u l t " ,   v e c t o r   v a l u e   =   c O r i g i n V e c t o r )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 _ _ s m d . v e c t o r V a l u e s [ v a l u e I n d e x ]   =   v a l u e ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 v e c t o r   s m d G e t V e c t o r ( s t r i n g   k e y   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f   ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 r e t u r n   _ _ s m d . v e c t o r V a l u e s [ v a l u e I n d e x ] ;  
         }  
  
         r e t u r n   c O r i g i n V e c t o r ;  
 }    true       %CodeSnippet%             XS: Code Snippet    SMD API Camera Info    
      CodeSnippet    CodeSnippet H      <  b o o l   s m d A d d C a m e r a I n f o ( s t r i n g   k e y   =   " d e f a u l t " ,   s t r i n g   v a l u e   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . A d d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 C a m e r a I n f o   c i   =   s t r i n g T o C a m e r a I n f o ( v a l u e ) ;  
                 _ _ s m d . c a m e r a I n f o V a l u e s . a d d ( c i ) ;  
                 _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ]   =   _ _ s m d . c a m e r a I n f o V a l u e s . s i z e ( )   -   1 ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 b o o l   s m d S e t C a m e r a I n f o ( s t r i n g   k e y   =   " d e f a u l t " ,   s t r i n g   v a l u e   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 C a m e r a I n f o   c i   =   s t r i n g T o C a m e r a I n f o ( v a l u e ) ;  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 _ _ s m d . c a m e r a I n f o V a l u e s [ v a l u e I n d e x ]   =   c i ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 s t r i n g   s m d G e t C a m e r a I n f o ( s t r i n g   k e y   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f   ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
  
                 s t r i n g   c a m e r a I n f o S t r i n g   =   c a m e r a I n f o T o S t r i n g ( _ _ s m d . c a m e r a I n f o V a l u e s [ v a l u e I n d e x ] ) ;  
                 r e t u r n   c a m e r a I n f o S t r i n g ;  
         }  
  
         r e t u r n   " d e f a u l t " ;  
 }    true       %CodeSnippet%             XS: Code Snippet    SMD API Unit Array    
      CodeSnippet    CodeSnippet H      &  b o o l   s m d A d d U n i t A r r a y ( s t r i n g   k e y   =   " d e f a u l t " ,   i n t [ ]   v a l u e   =   d e f a u l t )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . A d d K e y ( k e y ) ;  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 U n i t A r r a y   u a   =   i n t A r r a y T o U n i t A r r a y ( v a l u e ) ;  
                 _ _ s m d . u n i t A r r a y V a l u e s . a d d ( u a ) ;  
                 _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ]   =   _ _ s m d . u n i t A r r a y V a l u e s . s i z e ( )   -   1 ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 b o o l   s m d S e t U n i t A r r a y ( s t r i n g   k e y   =   " d e f a u l t " ,   i n t [ ]   v a l u e   =   d e f a u l t )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
  
  
         i f ( k e y I n d e x   ! =   - 1 )  
         {  
                 U n i t A r r a y   u a   =   i n t A r r a y T o U n i t A r r a y ( v a l u e ) ;  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 _ _ s m d . u n i t A r r a y V a l u e s [ v a l u e I n d e x ]   =   u a ;  
                 r e t u r n   t r u e ;  
         }  
  
         r e t u r n   f a l s e ;  
 }  
  
 i n t [ ]   s m d G e t U n i t A r r a y ( s t r i n g   k e y   =   " d e f a u l t " )  
 {  
         i n t   k e y I n d e x   =   _ _ s m d . F i n d K e y ( k e y ) ;  
  
         i f   ( k e y I n d e x   ! =   - 1 )  
         {  
                 i n t   v a l u e I n d e x   =   _ _ s m d . k e y V a l u e I n d i c e s [ k e y I n d e x ] ;  
                 i n t [ ]   u n i t A r r a y   =   u n i t A r r a y T o I n t A r r a y ( _ _ s m d . u n i t A r r a y V a l u e s [ v a l u e I n d e x ] ) ;  
                 r e t u r n   u n i t A r r a y ;  
         }  
  
         r e t u r n   n e w   i n t ( 0 ,   0 ) ;  
 }    true       %CodeSnippet%             XS: Code Snippet    SMD Initalzie    
      CodeSnippet    CodeSnippet H      �   r u l e   _ I n i t a l i z e _ S i m p l e _ M y t h _ D i c t i o n a r y  
 h i g h F r e q u e n c y  
 r u n I m m e d i a t e l y  
 a c t i v e  
 {  
         _ _ s m d . I n i t a l i z e ( ) ;  
  
         x s D i s a b l e R u l e ( " _ I n i t a l i z e _ S i m p l e _ M y t h _ D i c t i o n a r y " ) ;  
         t r D i s a b l e R u l e ( " I n i t a l i z e _ S i m p l e _ M y t h _ D i c t i o n a r y " ) ;  
 }    true       %CodeSnippet%             XS: Code Snippet    XS Inject End    
      CodeSnippet    CodeSnippet H      �   r u l e   _ S M D _ X S _ I N J E C T O R _ E N D  
 h i g h F r e q u e n c y  
 a c t i v e  
 {  
 x s D i s a b l e R u l e ( " _ S M D _ X S _ I N J E C T O R _ E N D " ) ;  
 t r D i s a b l e R u l e ( " S M D _ X S _ I N J E C T O R _ E N D " ) ;    true       %CodeSnippet%                 
   Ungrouped              SimpleMythDictionary       