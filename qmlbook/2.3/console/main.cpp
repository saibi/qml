#include <QCoreApplication>

#include <QTextStream>

QTextStream cout(stdout, QIODevice::WriteOnly);


#include <QStringList>
#include <QFile>

static void fileio()
{
	QList <QStringList> data;

	QFile file("sample.csv");

	if ( file.open(QIODevice::ReadOnly)) {
		QTextStream stream(&file);

		cout << "open sample.csv" << endl;

		forever {
			QString line = stream.readLine();

			if ( line.isNull()) {
				break;
			}

			if ( line.isEmpty()) {
				continue;
			}

			QStringList row;

			foreach(const QString & cell, line.split(",")) {
				row.append(cell.trimmed());
			}
			data.append(row);
		}


		for ( int i = 0 ; i < data.size(); ++i )
		{
			QListIterator<QString> iter(data.at(i));
			while(iter.hasNext()) {
				cout << iter.next();
				if ( iter.hasNext() ) {
					cout << " ";
				}
			}
			cout << endl;

		}

	}
	else
		cout << "sample.csv open error" << endl;
}


int main(int argc, char *argv[])
{
	QCoreApplication a(argc, argv);

	QString s1("Paris");
	QString s2("London");

	QString s = s1 + " " + s2 + "!";

	cout << s << endl;

	QString s3("Hello");
	QString s4("Qt");

	QList <QString> list;

	list << s3 << s4;

	QListIterator<QString> iter(list);
	while(iter.hasNext()) {
		cout << iter.next();
		if ( iter.hasNext() ) {
			cout << " ";
		}
	}

	cout << "!" << endl;

	fileio();

	return a.exec();
}
