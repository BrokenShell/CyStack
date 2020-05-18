#pragma once
#include <vector>


struct Stack {
    std::vector<int> data;
    void push(int value) {
        data.push_back(value);
    }
    int pop() {
        int result = data.back();
        data.pop_back();
        return result;
    }
    int size() {
        return data.size();
    }
};

struct Queue {
    std::vector<int> data;
    void push(int value) {
        data.insert(data.begin(), value);
    }
    int pop() {
        int result = data.back();
        data.pop_back();
        return result;
    }
    int size() {
        return data.size();
    }
};
