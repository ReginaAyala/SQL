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
\f1\b0 \cf0  users.
\f0\b \cf3 name
\f1\b0 \cf0 , users.handle 
\f0\b \cf2 from
\f1\b0 \cf0  users\

\f0\b \cf2 inner
\f1\b0 \cf0  
\f0\b \cf2 join
\f1\b0 \cf0  (
\f0\b \cf2 select
\f1\b0 \cf0  user_id  
\f0\b \cf2 from
\f1\b0 \cf0  user_skills 
\f0\b \cf2 where
\f1\b0 \cf0  skill_id = \cf4 1\cf0  
\f0\b \cf2 and
\f1\b0 \cf0  (
\f0\b \cf2 level
\f1\b0 \cf0  = \cf5 'competent'\cf0  
\f0\b \cf2 or
\f1\b0 \cf0  
\f0\b \cf2 level
\f1\b0 \cf0  = \cf5 'proficient'\cf0  
\f0\b \cf2 or
\f1\b0 \cf0  
\f0\b \cf2 level
\f1\b0 \cf0  = \cf5 'expert'\cf0 )\

\f0\b \cf2 intersect
\f1\b0 \cf0  
\f0\b \cf2 select
\f1\b0 \cf0  user_id 
\f0\b \cf2 from
\f1\b0 \cf0  user_skills 
\f0\b \cf2 where
\f1\b0 \cf0  skill_id = \cf4 13\cf0 ) 
\f0\b \cf2 as
\f1\b0 \cf0  ab\

\f0\b \cf2 on
\f1\b0 \cf0  users.id = ab.user_id\

\f0\b \cf2 where
\f1\b0 \cf0  enabled = \cf5 't'\cf0  
\f0\b \cf2 order
\f1\b0 \cf0  
\f0\b \cf2 by
\f1\b0 \cf0  
\f0\b \cf3 name
\f1\b0 \cf0  
\f0\b \cf2 asc
\f1\b0 \cf6 ;\cf0 \
}