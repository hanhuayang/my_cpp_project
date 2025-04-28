CXX = g++
CXXFLAGS = -std=c++11 -Wall

BUILD_DIR = build
SRC_DIR = src
TEST_DIR = test

TARGET = demo_app
TEST_TARGET = demo_test

all: build test

build:
    @mkdir -p $(BUILD_DIR)
    $(CXX) $(CXXFLAGS) -o $(BUILD_DIR)/$(TARGET) $(SRC_DIR)/main.cpp

test:
    $(CXX) $(CXXFLAGS) -I/usr/local/include \
    -L/usr/local/lib -lgtest -lgtest_main -lpthread \
    -o $(BUILD_DIR)/$(TEST_TARGET) $(TEST_DIR)/test_demo.cpp
    ./$(BUILD_DIR)/$(TEST_TARGET)

clean:
    rm -rf $(BUILD_DIR)

.PHONY: all build test clean
