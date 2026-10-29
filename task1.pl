{\rtf1\ansi\ansicpg1252\cocoartf2865
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 % ==========================================\
% Task 1: Area and Perimeter Calculations\
% ==========================================\
\
% --- Square ---\
% Area = (side)^2, Perimeter = 4 * side\
square_area(Side, Area) :-\
    Area is Side * Side.\
\
square_perimeter(Side, Perimeter) :-\
    Perimeter is 4 * Side.\
\
\
% --- Rectangle ---\
% Area = width * height, Perimeter = 2 * (width + height)\
rectangle_area(Width, Height, Area) :-\
    Area is Width * Height.\
\
rectangle_perimeter(Width, Height, Perimeter) :-\
    Perimeter is 2 * (Width + Height).\
\
\
% --- Triangle ---\
% Area = 0.5 * base * vertical_height\
% Perimeter = a + b + c (where a, b, c are the three side lengths)\
triangle_area(Base, Height, Area) :-\
    Area is 0.5 * Base * Height.\
\
triangle_perimeter(A, B, C, Perimeter) :-\
    Perimeter is A + B + C.}