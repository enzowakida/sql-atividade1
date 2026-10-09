use opr;

alter table produto1 add column descricao2 char(20) CHECK(descricao <> '');
alter table produto1 add check (nome <> '');
alter table produto1 add foreign key (cod_produtos) references grupo_produtos(codigo);
alter table vendas add constraint vendas_fk foreign key (cod_produtos) references produtos (codigo);
alter table produtos add constraint produtos_pk primary key (codigo);