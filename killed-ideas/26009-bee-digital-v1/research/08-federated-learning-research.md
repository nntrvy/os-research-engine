# 08 - Federated Learning for Insurance

**Date**: Sep 22, 2025

---

## Core Concept

> Thay vì tập hợp toàn bộ dữ liệu từ các công ty bảo hiểm về một chỗ để huấn luyện mô hình (centralized ML), **federated learning cho phép mỗi bên giữ dữ liệu tại chỗ**, mô hình được mang đến dữ liệu đó và chỉ gửi lại các cập nhật mô hình (như trọng số, gradient) để tổng hợp mô hình chung.

**Plain English**: Instead of collecting all data centrally, the model travels to the data. Only model updates (weights, gradients) are shared - not raw data.

```
Traditional ML:     Data → Central Server → Train Model
Federated Learning: Model → Each Insurer's Data → Share Updates → Combined Model
```

---

## Benefits for Insurance

| Benefit | Description |
|---------|-------------|
| **Privacy & Compliance** | Sensitive data never leaves insurer's systems, reduces breach risk |
| **Data Diversity** | Each company has different customers, regions, claims history - combining creates richer model |
| **Better Predictions** | Combined model for loss/fraud prediction outperforms individual models |

---

## Application to Electrik

### Fraud Detection Use Case

**Problem**: Insurers won't share claims data with each other (competitive, regulatory)

**Solution**: Federated learning allows Electrik to:
1. Deploy fraud detection model to each insurer
2. Train on their local data
3. Aggregate learnings without seeing raw data
4. Return improved model to all participants

**Value proposition to insurers**: "Get industry-wide fraud detection intelligence without exposing your data"

---

## Research Status

- Studied but **not yet widely applied** in insurance industry
- Potential technical differentiator for Electrik

---

## References

### Research Paper (SOA)
- [Federated Learning for Insurance Companies](https://www.soa.org/4916b8/globalassets/assets/files/resources/research-report/2024/federated-learning-insurance-companies.pdf)
- Society of Actuaries, 2024

### Educational
- [IBM Expert Explanation (Video)](https://www.youtube.com/watch?v=zqv1eELa7fs)

### Technical Foundation
- [Google Research Paper](https://arxiv.org/pdf/1811.03604)
- "Communication-Efficient Learning of Deep Networks from Decentralized Data"

---

## Strategic Implication

This could position Electrik as a **neutral infrastructure player** that:
1. Doesn't compete with insurers for data ownership
2. Provides collective intelligence benefits
3. Maintains trust through privacy-preserving architecture

**Potential moat**: First to implement federated fraud detection for Vietnam motor insurance.
