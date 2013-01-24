public class queryClass
{
public static void query()
{
// within the for loop
for (Account a : [select id, name from account
where name like 'ISRO']) {
System.Debug(a);
}
} 
}