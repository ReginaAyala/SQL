{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;\f1\fnil\fcharset0 Menlo-Bold;}
{\colortbl;\red255\green255\blue255;\red128\green0\blue0;\red0\green0\blue128;\red0\green128\blue0;
\red0\green0\blue255;\red255\green0\blue0;}
{\*\expandedcolortbl;;\csgenericrgb\c50196\c0\c0;\csgenericrgb\c0\c0\c50196;\csgenericrgb\c0\c50196\c0;
\csgenericrgb\c0\c0\c100000;\csgenericrgb\c100000\c0\c0;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf0  
\f1\b \cf2 select
\f0\b0 \cf0  
\f1\b \cf3 ceil
\f0\b0 \cf0 (
\f1\b \cf3 sum
\f0\b0 \cf0 (dif)) 
\f1\b \cf2 as
\f0\b0 \cf0  total_hours 
\f1\b \cf2 from
\f0\b0 \cf0  (\
	
\f1\b \cf2 select
\f0\b0 \cf0  start_date ,end_date,\
	
\f1\b \cf2 case
\f0\b0 \cf0   \
		
\f1\b \cf2 when
\f0\b0 \cf0  start_date <= (\cf4 '2022-03-01'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0 ) 
\f1\b \cf2 and
\f0\b0 \cf0  end_date >= (\cf4 '2022-03-31'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0 ) 
\f1\b \cf2 then
\f0\b0 \cf0  (
\f1\b \cf3 date_part
\f0\b0 \cf0 (\cf4 'days'\cf0 , \cf4 '2021-03-31'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0   - \cf4 '2021-03-01'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0 ) - \cf5 8\cf0 ) * \cf5 8\cf0 \
		
\f1\b \cf2 when
\f0\b0 \cf0  start_date <= (\cf4 '2022-03-01'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0 ) 
\f1\b \cf2 and
\f0\b0 \cf0  end_date < (\cf4 '2022-03-31'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0 ) 
\f1\b \cf2 then
\f0\b0 \cf0  (
\f1\b \cf3 date_part
\f0\b0 \cf0 (\cf4 'days'\cf0 , end_date  - \cf4 '2022-03-01'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0 ) - (\cf5 30\cf0  / 
\f1\b \cf3 date_part
\f0\b0 \cf0 (\cf4 'days'\cf0 , end_date  - \cf4 '2022-03-01'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0 ))*\cf5 2\cf0 )*\cf5 8\cf0 \
		
\f1\b \cf2 when
\f0\b0 \cf0  start_date >= (\cf4 '2022-03-01'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0 ) 
\f1\b \cf2 and
\f0\b0 \cf0  end_date >= (\cf4 '2022-03-31'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0 ) 
\f1\b \cf2 then
\f0\b0 \cf0  (
\f1\b \cf3 date_part
\f0\b0 \cf0 (\cf4 'days'\cf0 , \cf4 '2021-03-31'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0   - start_date ) - (\cf5 30\cf0 /
\f1\b \cf3 date_part
\f0\b0 \cf0 (\cf4 'days'\cf0 , \cf4 '2021-03-31'\cf0 ::
\f1\b \cf3 timestamp
\f0\b0 \cf0   - start_date ))*\cf5 2\cf0 )*\cf5 8\cf0 \
	
\f1\b \cf2 end
\f0\b0 \cf0  
\f1\b \cf2 as
\f0\b0 \cf0  dif\
	
\f1\b \cf2 from
\f0\b0 \cf0  assignments \
	
\f1\b \cf2 where
\f0\b0 \cf0  (
\f1\b \cf3 DATE
\f0\b0 \cf0  \cf4 '2022-03-01'\cf0 , 
\f1\b \cf3 DATE
\f0\b0 \cf0  \cf4 '2022-03-31'\cf0 ) 
\f1\b \cf2 OVERLAPS
\f0\b0 \cf0  (start_date, end_date)\
) 
\f1\b \cf2 as
\f0\b0 \cf0  sum_hours\cf6 ;}