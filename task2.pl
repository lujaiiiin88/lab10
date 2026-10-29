{\rtf1\ansi\ansicpg1252\cocoartf2865
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 % ==========================================\
% Task 2: Login System with 3 Attempts\
% ==========================================\
\
% Dataset of valid users and passwords\
user(admin, 1234).\
user(lujain, 5678).\
user(student, 0000).\
\
% Main login entry point (starts with 3 allowed attempts)\
login :-\
    write('=== SYSTEM LOGIN ==='), nl,\
    login_attempts(3).\
\
% If attempts reach 0, lock out the user\
login_attempts(0) :-\
    nl, write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl, !.\
\
% If attempts remain, prompt for credentials\
login_attempts(AttemptsLeft) :-\
    write('Enter username: '), read(Username),\
    write('Enter password: '), read(Password),\
    (   user(Username, Password)\
    ->  nl, write('Login Successful'), nl\
    ;   nl, write('Login Unsuccessful'), nl,\
        NewAttempts is AttemptsLeft - 1,\
        write('Attempts remaining: '), write(NewAttempts), nl, nl,\
        login_attempts(NewAttempts)\
    ).}