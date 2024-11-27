class Logger:
    @staticmethod
    def error(msg):
        print("\033[31m" + "ERROR: " + msg + "\033[0m")

    @staticmethod
    def info(msg):
        print("\033[32m" + "INFO: " + "\033[0m" + msg)

    @staticmethod
    def warning(msg):
        print("\033[33m" + "WARN: " + msg + "\033[0m")
