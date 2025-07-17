URLS=("https://ya.ru")

for URL in "${URLS[@]}"; do
  if curl -s --head "$URL" | grep -q "200 OK"; then
    echo "URL $URL is reachable."
  else
    echo "URL $URL is not reachable."
    continue
  fi
done
echo "All URLs processed."