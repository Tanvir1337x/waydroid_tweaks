import datetime


class Logger:
    @staticmethod
    def _log(level, msg, color_code):
        timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        print(f"\033[{color_code}m[{timestamp}] {level}: {msg}\033[0m")

    @staticmethod
    def error(msg):
        Logger._log("ERROR", msg, "31")

    @staticmethod
    def info(msg):
        Logger._log("INFO", msg, "32")

    @staticmethod
    def warning(msg):
        Logger._log("WARN", msg, "33")

    @staticmethod
    def debug(msg):
        Logger._log("DEBUG", msg, "34")

    @staticmethod
    def critical(msg):
        Logger._log("CRITICAL", msg, "35")
