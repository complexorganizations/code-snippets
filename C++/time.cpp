#include <stdio.h>
#include <time.h>

// Get the current time
void current_time() {
    time_t t;
    time(&t);
    printf("%s", ctime(&t));
}

// Get the current date only
void current_date() {
    time_t t;
    struct tm *tm;
    time(&t);
    tm = localtime(&t);
    printf("%d/%d/%d \n", tm->tm_mday, tm->tm_mon + 1, tm->tm_year + 1900);
}

// Get the current time only
void current_time_only() {
    time_t t;
    struct tm *tm;
    time(&t);
    tm = localtime(&t);
    printf("%d:%d:%d \n", tm->tm_hour, tm->tm_min, tm->tm_sec);
}

// Get the current hour only
void current_hour_only() {
    time_t t;
    struct tm *tm;
    time(&t);
    tm = localtime(&t);
    printf("%d \n", tm->tm_hour);
}

// Get the current minute only
void current_minute_only() {
    time_t t;
    struct tm *tm;
    time(&t);
    tm = localtime(&t);
    printf("%d \n", tm->tm_min);
}

// Get the current second only
void current_second_only() {
    time_t t;
    struct tm *tm;
    time(&t);
    tm = localtime(&t);
    printf("%d \n", tm->tm_sec);
}

int main() {
    // Get the current time
    current_time();
    // Get the current date
    current_date();
    // Get the current time only
    current_time_only();
    // Get the current hour only
    current_hour_only();
    // Get the current minute only
    current_minute_only();
    // Get the current second only
    current_second_only();
    return 0;
}
