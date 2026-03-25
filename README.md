# platform-cicd

组织级 CI/CD 平台仓库，提供可复用 GitHub Actions 工作流、策略模板和接入脚本。

## 目录
- `.github/workflows/`: 可复用工作流
- `templates/workflow/`: 业务仓入口 workflow 模板
- `templates/repo/`: 业务仓基础模板
- `policies/kyverno/`: Kubernetes 策略
- `scripts/onboarding/`: 批量接入脚本
- `docs/`: 接入与治理文档

## 版本策略
业务仓统一引用发布标签，不直接引用 `@main`：

```yaml
uses: steinshei/platform-cicd/.github/workflows/reusable-ci.yml@v1
```
