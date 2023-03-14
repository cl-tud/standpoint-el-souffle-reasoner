TEST_DIR=tests/test01
FILE=calculus.dl

default: $(TEST_DIR)

.PHONY: $(TEST_DIR)

$(TEST_DIR):
	souffle -I lib -F $(TEST_DIR) -D $(TEST_DIR) $(FILE)

clean:
	find $(TEST_DIR) -name "*.csv" -print -delete
