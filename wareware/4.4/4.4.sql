{\rtf1\ansi\ansicpg1252\cocoartf2638
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Bold;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red128\green0\blue0;\red0\green0\blue128;\red0\green0\blue255;
\red0\green128\blue0;\red255\green0\blue0;}
{\*\expandedcolortbl;;\csgenericrgb\c50196\c0\c0;\csgenericrgb\c0\c0\c50196;\csgenericrgb\c0\c0\c100000;
\csgenericrgb\c0\c50196\c0;\csgenericrgb\c100000\c0\c0;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\b\fs24 \cf2 select
\f1\b0 \cf0  
\f0\b \cf3 percentile_disc
\f1\b0 \cf0 (\cf4 0.5\cf0 ) 
\f0\b \cf2 within
\f1\b0 \cf0  
\f0\b \cf2 group
\f1\b0 \cf0  (
\f0\b \cf2 order
\f1\b0 \cf0  
\f0\b \cf2 by
\f1\b0 \cf0  end_date 
\f0\b \cf2 asc
\f1\b0 \cf0 ) \

\f0\b \cf2 from
\f1\b0 \cf0  assignments \

\f0\b \cf2 where
\f1\b0 \cf0  (
\f0\b \cf3 DATE
\f1\b0 \cf0  \cf5 '2022-03-01'\cf0 , 
\f0\b \cf3 DATE
\f1\b0 \cf0  \cf5 '2022-03-31'\cf0 ) 
\f0\b \cf2 OVERLAPS
\f1\b0 \cf0  (start_date, end_date)\cf6 ;}