--database seviyesi trigger tanýmlanabilir
--sunucu seviyeli trigger tanýmlanabilir
--tablo seviyeli trigger tanýmlanabilir
create trigger trigger_tabloekleme_engelleme
on database
for create_table
as
print('Bu veri tabanýna tablo eklenemez. Bu iþlem trigger ile engellenmiþtir')
rollback