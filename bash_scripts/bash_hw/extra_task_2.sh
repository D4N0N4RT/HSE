# Установить интервал проверки (в секундах)
INTERVAL=60

# Получаем текущие данные о системе
while true; do
  CPU_USAGE=$(top -b -n 1 | grep "Cpu(s)" | awk '{print $2 + $4}')
  MEM_USAGE=$(free -m | awk 'NR==2{printf "%d\n", $3/$2100}')
  DISK_USAGE=$(df -P / | tail -1 | awk '{print $5}')

  # Отображаем данные о системе
  echo "CPU usage: $CPU_USAGE%"
  echo "Memory usage: $MEM_USAGE%"
  echo "Disk usage: $DISK_USAGE"

  # Проверка использования памяти
  if [ $MEM_USAGE -gt 80 ]; then
    echo "Memory usage superseded 80%. The most requiring processes:"
    ps aux --sort -%mem | head -10
  fi

  # Ожидание перед следующей проверкой
  sleep $INTERVAL
done
