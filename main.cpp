#include <stdio.h>
#include <stdlib.h>
#include <sqlite3.h>

int main(int argc, char* argv[])
{
	sqlite3 *db;
	char *zErrMsg = 0;
	int rc;

	printf("%s\n", "read sqlitedb");

	rc = sqlite3_open("test.db", &db);

	if ( rc )
	{
		fprintf(stderr, "%s\n", sqlite3_errmsg(db));
		exit(0);
	}
	else
	{
		fprintf(stderr, "%s\n", "Opend Database Success");
	}
	sqlite3_close(db);
}