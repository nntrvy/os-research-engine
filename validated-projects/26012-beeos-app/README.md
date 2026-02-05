# 26012: BeeOS App

**Project:** BeeOS - Hệ thống quy trình tác vụ tự động cho BeeVN
**Type:** Validated Project / Custom Software
**Category:** Cash Engine (Client Services)
**End Client:** BeeVN Insurance Broker (Vingroup in-house broker)
**Product Owner:** OS Research
**Dev Vendor:** VINOVA (Công ty TNHH Công Nghệ NEWNOVA)
**Contract:** MSA-20251011VINOVA-OSResearch
**Status:** ✅ LIVE (Production Deployed 26.01.26)
**Revenue:** USD 90,000 (Phase I)
**Created:** 23.10.25
**BRD Version:** 1.1

---

## Overview

BeeOS is an agentic workflow platform built to automate and intelligently support core operations for BeeVN Insurance Broker. The system serves as the "operating brain" of BeeVN - connecting renewal processes, payments, quotations, claims, and document management in a single intelligent system.

### Design Philosophy

> **Seamless integration into existing habits** - Rather than forcing users to adopt entirely new workflows, BeeOS integrates into their existing processes while digitizing and automating repetitive tasks.

---

## Client Context

**BeeVN** is Vingroup's in-house insurance broker, responsible for arranging and coordinating all insurance types for subsidiary companies.

### Main Insurance Types (90% of workload)
- Property All-Risk Insurance (including mandatory fire/explosion)
- Business Interruption Insurance
- Public Liability Insurance

### Vingroup Subsidiaries Served (2025)
| Subsidiary | Items |
|------------|-------|
| Vinpearl | 54 |
| Vinhomes | 27 |
| VinFast | 14 |
| Vinmec | 10 |
| GSM | 9 |
| Vincom | 8 |
| Vinschool | 2 |
| Other (vehicles, golf, construction, etc.) | 71 |

### Current State (Before BeeOS)
- **300+ policy files** stored as Word drafts + scanned contracts
- **No structured database** - no naming conventions, no record IDs, no search
- **Manual tracking** via Excel spreadsheets
- **17 insurance company partners**
- **Claims tracked** in a single Excel file

---

## Problems Solved

| Problem | Impact | BeeOS Solution |
|---------|--------|----------------|
| No standardized database | Can't retrieve data quickly | Structured DB + document repository |
| Manual reminders | Missed renewals, late payments | Automated reminder engine |
| Inconsistent insurer selection | Time-consuming, no data basis | Performance-based recommendations |
| Contract draft errors | Human error in documents | AI-assisted contract review |
| No holistic view for leadership | Can't make data-driven decisions | Dashboard (Web + Mobile) |

---

## Key Features (Phase I)

### 1. Database & Document Repository
- Standardized storage for 1,000+ files/year
- Naming conventions, versioning, permissions, backup
- Auto-extraction from DOCX/scans (OCR) with manual confirmation
- Full-text search + structured field filtering
- Auto-generated record IDs

### 2. Automated Reminder Engine
| Reminder Type | Timing |
|---------------|--------|
| Standard renewal | 45 days before expiry |
| High-value (≥10B VND) | 90 days before expiry |
| Overdue payment | After 10 days, repeat every 5 days |

### 3. Quotation & Underwriting Support
- 3-year premium history by insurer and business type
- Loss history by insurer, client, and contract type
- Data-driven insurer recommendations
- Export to CSV/Excel

### 4. AI-Assisted Contract Review
- Upload Word/PDF contracts
- Auto-identify key fields
- Flag errors and missing information
- Compare with similar past contracts
- Generate revision suggestions

### 5. Comprehensive Dashboard
- All contracts, renewals, payments, claims in one view
- Filter by client, insurer, contract type, time period
- Action timeline, email tracking, reminder logs
- Full audit trail

### 6. Mobile App (Leadership)
- Track contracts, reminders, approvals on phone
- Approve staff proposals
- Notifications for critical events

---

## Workflows Digitized

### Underwriting Workflow (10 Steps)

```
┌─────────────────────────────────────────────────────────────────────────┐
│                        UNDERWRITING WORKFLOW                            │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  1. Receive Request     ──→  Email from Tổ Bảo Hiểm to                 │
│     (from Client)            underwriting@beevn.com.vn                  │
│           │                                                             │
│           ▼                                                             │
│  2. Check Background    ──→  3-year loss history, premium rates,       │
│     Data                     coinsurance rates, previous contracts      │
│           │                  ⚠️ Currently manual, no central DB         │
│           ▼                                                             │
│  3. Prepare Quotation   ──→  Submit to BLĐ via Zalo for approval       │
│     & Get Approval           (which insurers to invite)                 │
│           │                                                             │
│           ▼                                                             │
│  4. Invite Insurers     ──→  Send quotation slip to selected           │
│     to Bid                   insurance companies                        │
│           │                                                             │
│           ▼                                                             │
│  5. Collect Responses   ──→  Insurers reply with % they can cover,     │
│     & Submit to BLĐ          terms, exclusions                          │
│           │                                                             │
│           ▼                                                             │
│  6. BLĐ Approves        ──→  Final coinsurance split                   │
│     Coinsurance Split        (e.g., A 50%, B 30%, C 20%)               │
│           │                                                             │
│           ▼                                                             │
│  7. Draft Contract      ──→  Leader insurer drafts, others confirm     │
│     Preparation              ⚠️ Error-prone step                        │
│           │                                                             │
│           ▼                                                             │
│  8. Submit to Client    ──→  Client (Tổ Bảo Hiểm) confirms             │
│     & Issue Policy           to issue policy                            │
│           │                                                             │
│           ▼                                                             │
│  9. Payment Tracking    ──→  30-day payment term                       │
│                              Reminder: +10 days, then every 5 days      │
│           │                                                             │
│           ▼                                                             │
│ 10. Renewal Reminder    ──→  Standard: 45 days before expiry           │
│                              High-value: 90 days before expiry          │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

### Claims Workflow (8 Steps)

```
┌─────────────────────────────────────────────────────────────────────────┐
│                          CLAIMS WORKFLOW                                │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  1. Incident            ──→  Client reports loss to BeeVN              │
│     Notification             (email/phone) with initial info            │
│           │                                                             │
│           ▼                                                             │
│  2. Initial             ──→  BeeVN confirms receipt, advises on        │
│     Assessment               coverage scope, notifies insurer           │
│           │                                                             │
│           ▼                                                             │
│  3. Claim Registration  ──→  Insurer registers, coordinates with       │
│     & Survey Setup           loss adjusters if needed                   │
│           │                                                             │
│           ▼                                                             │
│  4. Loss Survey         ──→  On-site assessment, photos, report        │
│                              Guide client on required documents         │
│           │                                                             │
│           ▼                                                             │
│  5. Documentation       ──→  Client prepares documents                 │
│     Collection               BeeVN assists, checks completeness         │
│           │                                                             │
│           ▼                                                             │
│  6. Claim Evaluation    ──→  Insurer reviews, requests additions,      │
│                              agrees on settlement approach              │
│           │                                                             │
│           ▼                                                             │
│  7. Settlement &        ──→  Insurer notifies result with calculation  │
│     Payment                  BeeVN verifies, client confirms            │
│           │                                                             │
│           ▼                                                             │
│  8. Closure             ──→  Payment received, assets disposed,        │
│                              records archived, dashboard updated        │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

### BeeVN's Role in Claims
- **Coordinator**: Between client, insurer, and loss adjusters
- **Progress tracker**: Ensure no case stalls >30 days
- **Early warning**: Auto-detect delayed cases or missing documents
- **Data aggregator**: Payout rate, average processing time, loss by risk type

---

## Stakeholders

| Role | Responsibilities |
|------|------------------|
| **Underwriting Team** | Renewals, policy issuance, quotation preparation, insurer coordination |
| **Claims Team** | Receive incidents, coordinate with adjusters/insurers, track documentation |
| **Leadership (BLĐ)** | Monitor insurer performance, contract volume, financial risk |
| **Tổ Bảo Hiểm** | Client-side insurance unit in each Vingroup subsidiary |

---

## Success Metrics

| Metric | Target |
|--------|--------|
| On-time renewal rate | ≥95% |
| Late payment reduction | 90% |
| Insurer selection time | -50% |
| Manual input errors | -70% |
| File retrieval time | <10 seconds |
| Internal satisfaction | ≥8/10 |

---

## Project Scope

### In Scope (Phase I - 3 months)
- Database & document repository
- Automated reminder engine
- Quotation & underwriting decision support
- AI-assisted contract review
- Comprehensive tracking dashboard
- Mobile app for leadership

### Out of Scope
- ❌ Direct API integration with insurers (manual input only)
- ❌ Email data auto-extraction
- ❌ Complex AI
- ❌ Financial/accounting module

### Future Expansion (Optional)
- Enhanced AI features
- Voice interface (agentic AI)
- End-to-end claims automation
- Insurer API integration
- GSM vehicle claims system integration
- Email auto-extraction

---

## Technical Requirements

| Aspect | Requirement |
|--------|-------------|
| Language | Vietnamese with proper insurance terminology |
| Security | Role-based access, data encryption, action logging |
| Architecture | Modular, extensible for future AI agents |
| Interfaces | Web app (staff), Mobile app (leadership) |
| Uptime | ≥99% during business hours |
| Compliance | Vietnam data security and legal regulations |

---

## Timeline

| Phase | Period | Status |
|-------|--------|--------|
| **Phase I (MVP)** | Nov 2025 - Feb 2026 | ✅ Complete |
| **Maintenance** | Feb 2026 - Feb 2027 | 🔄 Active |
| **Phase II+** | TBD | AI expansion, mobile app, voice interface |

---

## Folder Structure

```
26012-beeos-app/
├── README.md                           # This file (master context)
├── 23.10.25-brd-v1.1.md               # Original Vietnamese BRD
├── 22.10.25-workflows.md              # Underwriting & Claims workflows
├── contracts/
│   ├── HDDV_BEEOS-signed2.pdf                              # Signed service contract
│   ├── Hợp đồng Dịch vụ...Final.docx                       # Master Service Agreement
│   ├── OS_RESEARCH_Vinova_NDA_signed.pdf                   # NDA
│   ├── PLHD 01-signed1.pdf                                 # Appendix 01 (signed)
│   └── Phụ lục 02 - Yêu cầu công việc 01 - Final.docx     # Work Requirements (scope, timeline, cost)
└── work-documents/
    ├── Weekly Reports/                 # Week 1-12 progress reports
    ├── Technical Architecture Design.docx   # System architecture
    ├── User Guide (Full/Short versions)     # Role-based user documentation
    ├── BeeOS-data-dictionary.pdf            # 44 database tables documented
    ├── VNV-BeeOS - Feature Tracking.xlsx    # Feature progress 0%→95%
    ├── VNV-BeeOS - Handover.xlsx            # Deliverables status
    ├── VNV-BeeOS - DataMigration-Summary.xlsx  # Migration stats
    ├── BeeOS - production-infrastructure-setup.docx  # AWS/DNS config
    ├── BeeOS Design.fig                     # Figma design file
    └── 05.02.26-beeos-training-video-guide.md  # Training video scripts & production guide
```

---

## Commercial Structure

### Contract Details
| Aspect | Details |
|--------|---------|
| **Contract #** | MSA-20251011VINOVA-OSResearch |
| **Effective Date** | 10/11/2025 |
| **Parties** | OS Research (Bên A) ↔ VINOVA (Bên B/Nhà Cung Cấp) |
| **End Client** | BeeVN Insurance Broker |
| **Contract Value** | USD 90,000 (~2.35B VND) |
| **Duration** | 3 months (12/11/2025 – 12/02/2026) |

### Relationship Structure
```
┌─────────────┐      contracts      ┌─────────────┐      builds for      ┌─────────────┐
│ OS Research │ ─────────────────→ │   VINOVA    │ ─────────────────→  │   BeeVN     │
│ (Product    │                    │ (Dev Vendor)│                      │ (End User)  │
│  Owner)     │                    │             │                      │             │
└─────────────┘                    └─────────────┘                      └─────────────┘
```

### Development Phases
| Phase | Duration | Dates |
|-------|----------|-------|
| **1. Requirements & Design** | 2 weeks | 12/11 - 26/11/2025 |
| **2. Development & Testing** | 9 weeks | 27/11/25 - 29/01/2026 |
| **3. UAT** | 1 week | 30/01 - 06/02/2026 |
| **4. Production Deployment** | 1 week | 07/02 - 12/02/2026 |

### MVP Scope (Contract vs BRD)
| Feature | BRD | MVP Contract |
|---------|-----|--------------|
| Database & Document Repository | ✅ | ✅ |
| Automated Reminders | ✅ | ✅ |
| Quotation & Underwriting Support | ✅ | ✅ |
| AI Contract Review | ✅ | ❌ (Phase 2) |
| Dashboard (Web) | ✅ | ✅ |
| Mobile App | ✅ | ❌ (Phase 2) |
| Email Auto-extraction | ❌ | ❌ |
| Insurer API Integration | ❌ | ❌ |

### User Roles (MVP)
| Role | Responsibilities |
|------|------------------|
| **System Admin** | Manage users and system settings |
| **Underwriter** | Manage policy records, submit for approval |
| **Claim Officer** | Manage claim requests, update documentation status |
| **Leader (BLĐ)** | Approve proposals, monitor via dashboard |

### Team Structure (VINOVA)
| Role | FTE | Monthly Rate |
|------|-----|--------------|
| Scrum Master / PM (Senior) | 1 | $5,950 |
| Business Analyst (Mid) | 1 | $4,100 |
| Backend Developers (Mid) | 2 | $6,700 |
| Frontend Developers (Mid) | 3 | $10,050 |
| UX/UI Designer (Mid) | 0.5 | $1,675 |
| Data Engineer (Mid) | 1 | $4,100 |
| QC/QA (Mid) | 1 | $2,600 |
| DevOps Engineer | 0.5 | $1,675 |
| **Total** | **10** | **$30,000** (after discount) |

### Tech Stack (Implemented)
| Layer | Technology |
|-------|------------|
| **Infrastructure** | AWS Cloud (EC2, RDS, S3, CloudFront, SES) |
| **Database** | PostgreSQL 15 on RDS |
| **Backend** | Node.js (NestJS v11), TypeORM, JWT, Redis |
| **Frontend** | React.js v18, TypeScript, Tailwind CSS, ShadCN, Zustand |
| **Mobile** | React Native (Phase 2) |
| **Messaging** | Kafka |
| **Notifications** | AWS SES (email), Zalo ZNS (Vietnamese) |
| **Auth** | JWT + Google OAuth + Zalo OAuth |
| **DevOps** | Docker, Kubernetes, Jenkins |
| **Monitoring** | Sentry.io, SonarQube |

### Deliverables
- Full source code (multi-tier architecture)
- Technical documentation
- Feature requirements documentation
- Test cases
- Underwriting workflow implementation
- Claims workflow implementation

### Hosting Responsibility
BeeVN provides:
- Production environment / hosting
- Domain registration
- Third-party service licenses

---

## Production Infrastructure

### Server & Domain
| Component | Details |
|-----------|---------|
| **Domain** | beeos.com.vn |
| **SSL** | AWS Certificate Manager |
| **CDN** | CloudFront |
| **EC2 Instance** | t3a.large (2 vCPU, 8GB RAM) |
| **Public IP** | 3.0.244.142 |
| **Region** | ap-southeast-1 (Singapore) |

### Architecture
```
┌─────────────────────────────────────────────────────────────────────────┐
│                         PRODUCTION ARCHITECTURE                          │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  Internet ──→ CloudFront (CDN) ──→ ALB ──→ EC2 (t3a.large)             │
│                                              │                           │
│                                              ├──→ beeos-be (NestJS 11)  │
│                                              │       ├── JWT Auth        │
│                                              │       ├── TypeORM         │
│                                              │       └── Kafka           │
│                                              │                           │
│                                              └──→ beeos-fe-cms (React)  │
│                                                                          │
│  External Services:                                                      │
│  ├── RDS PostgreSQL (beeos_prod_db)                                     │
│  ├── AWS SES (Email notifications)                                      │
│  ├── S3 (Document storage)                                              │
│  └── Zalo ZNS (Vietnamese notifications)                                │
│                                                                          │
└─────────────────────────────────────────────────────────────────────────┘
```

### Security Features
- JWT access/refresh tokens in HTTP-only cookies
- Google Sign-in + Zalo OAuth integration
- RBAC/PBAC (Role & Permission-Based Access Control)
- Rate limiting & Helmet headers
- All traffic over HTTPS

---

## Database Schema

### Overview
- **Database**: PostgreSQL on AWS RDS
- **Schema**: beeos_prod_db
- **Total Tables**: 44

### Core Tables by Module
| Module | Tables | Key Entities |
|--------|--------|--------------|
| **Policies** | 8 | policy, policy_item, policy_reminder, policy_payment |
| **Claims** | 6 | claim, claim_item, claim_document, claim_status_history |
| **Partners** | 5 | insurer, client (subsidiary), contact_person |
| **Users** | 4 | user, role, permission, user_activity_log |
| **Documents** | 4 | document, document_version, document_category |
| **Notifications** | 3 | notification, notification_template, notification_log |
| **System** | 14 | audit_log, settings, lookup tables, etc. |

---

## Data Migration

### Summary
| Data Type | Records | Period |
|-----------|---------|--------|
| **Policies** | ~800 | 2023-2025 |
| **Claims** | ~2,500 | Historical |
| **Insurers** | 17 | All partners |
| **Subsidiaries** | 8 | Vingroup companies |

### Migration Sources
- Excel spreadsheets (primary)
- Word documents (policy drafts)
- Scanned contracts (OCR processed)

---

## Project Milestones (Actual)

| Milestone | Planned | Actual | Status |
|-----------|---------|--------|--------|
| Requirements & Design | 12-26/11/2025 | 12-26/11/2025 | ✅ Complete |
| Development Sprint 1-4 | 27/11-25/12/2025 | 27/11-25/12/2025 | ✅ Complete |
| Development Sprint 5-8 | 26/12/25-22/01/26 | 26/12/25-22/01/26 | ✅ Complete |
| Development Sprint 9 | 23-29/01/2026 | 23-29/01/2026 | ✅ Complete |
| Production Deploy | 26/01/2026 | 26/01/2026 | ✅ Complete |
| UAT | 30/01-06/02/2026 | 30/01-06/02/2026 | ✅ Complete |
| **GOLIVE** | 07-12/02/2026 | 02-08/02/2026 | ✅ Complete |
| Maintenance Support | 12/02/26-11/02/27 | - | 🔄 Active |

### Feature Progress
| Feature | Progress |
|---------|----------|
| Policy Management | 95% |
| Claims Management | 95% |
| Dashboard & Reports | 95% |
| Notifications (Email/Zalo) | 95% |
| User Management | 95% |
| Document Repository | 95% |

---

## Handover Status

### Deliverables
| Item | Status |
|------|--------|
| Source Code (Backend) | ✅ Complete |
| Source Code (Frontend) | ✅ Complete |
| Technical Documentation | ✅ Complete |
| User Guide | ✅ Complete |
| Data Dictionary | ✅ Complete |
| Test Cases | ✅ Complete |
| Production Environment | ✅ Deployed |
| Data Migration | ✅ Complete |
| GitHub Repository Access | ⏳ Pending |
| AWS Account Handover | ⏳ Pending |

### Maintenance & Support
- **Period**: 12/02/2026 - 11/02/2027 (1 year)
- **Scope**: Bug fixes, minor enhancements, system monitoring
- **SLA**: Response within 24 hours for critical issues

---

## Relationship to Other Projects

| Project | Relationship |
|---------|--------------|
| `26009-bee-digital-v1` | Different project - external platform for selling insurance & managing claim SLAs |
| `BeeOS` | Internal workflow automation for BeeVN operations |

---

## Changelog

| Date | Change |
|------|--------|
| 22.10.25 | Workflows documented (underwriting + claims) |
| 23.10.25 | BRD v1.1 created |
| 10.11.25 | Master Service Agreement signed with VINOVA |
| 12.11.25 | Phụ lục 02 (Work Requirements) finalized - MVP scope, timeline, cost |
| 12.11.25 | Development kickoff |
| 26.01.26 | Production environment deployed (beeos.com.vn) |
| 30.01.26 | UAT started |
| 02.02.26 | GOLIVE - System live for BeeVN users |
| 05.02.26 | Master context updated with work-documents (infra, DB schema, migration, handover) |
| 05.02.26 | Added training video guide with 10 Vietnamese scripts + production checklist |
| 05.02.26 | Moved to validated-projects (project complete, revenue realized) |
