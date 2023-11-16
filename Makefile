run:
	./local_startup.sh

start: run

stop:
	kill -9 $$(cat start.pid) 2> /dev/null && echo "stopped"

restart: stop start

lt:
	./load_test.sh

clean:
	rm -f nohup.out
