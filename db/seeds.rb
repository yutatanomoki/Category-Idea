Category.create(
  name: 'アプリケーション'
)

Idea.create(
  body: 'タスク管理ツール'
)

curl -X POST -H "Content-Type: application/json" -d '{"idea": {"body":"マッチング"}}' http://localhost:3000/ideas