# LaTeX論文執筆テンプレート

VScodeのDevcontainer機能を使って環境に依存しないLaTeX執筆環境を構築するリポジトリ

## DevcontainerにインストールされるVScode拡張機能

- [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
- [Github Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
- [Gitmoji](https://marketplace.visualstudio.com/items?itemName=seatonjiang.gitmoji-vscode)

## GitHub Actions

- develop向きのPR時にTextlintが走ります
- mainへのマージ時に自動Releaseを行い、PDFを生成して添付します。
