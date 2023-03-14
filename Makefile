TEST_DIR=tests
FILE=calculus.dl

default: $(TEST_DIR)/test01

.PHONY: $(TEST_DIR)/test01 $(TEST_DIR)/test02

test01:
	souffle -I lib -F $(TEST_DIR)/test01 -D $(TEST_DIR)/test01 $(FILE)

test02:
	souffle -I lib -F $(TEST_DIR)/test02 -D $(TEST_DIR)/test02 $(FILE)

clean:
	find $(TEST_DIR) -name "*.csv" -print -delete
