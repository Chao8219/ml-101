% This file is to do linear regression on the titanic dataset
% where the output would be the fare
% inputs would be pclass, sex, age, sibsp, parch
clc; close all; clear all;

% read raw dataset
filename = 'titanic.xls';
raw_DS = readtable(filename);

% obtain subtable
DS = raw_DS(:, {'pclass', 'sex', 'age', 'sibsp', 'parch', 'fare'});

% refine dataset
fine_DS = DS(~isnan(DS.age) &  DS.fare~=0, :);
fine_DS.sex = grp2idx(cellstr(fine_DS.sex));