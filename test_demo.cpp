#include <gtest/gtest.h>
#include "../src/main.cpp"  // 包含被测试的代码

TEST(AddTest, PositiveNumbers) {
    EXPECT_EQ(add(2, 3), 5);
}

TEST(AddTest, NegativeNumbers) {
    EXPECT_EQ(add(-2, -3), -5);
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
