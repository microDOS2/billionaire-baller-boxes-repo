import { Container } from "@/components/container";
import { SectionTitle } from "@/components/section-title";

const checklist = [
  "Create account with name, email, and phone number",
  "Set preferred delivery and handoff options",
  "Accept platform terms and disclosures",
  "Upload identification when required by selected categories",
  "Receive verification status before restricted checkout continues",
];

export default function RegisterPage() {
  return (
    <section className="section-block">
      <Container className="two-column-grid">
        <div>
          <SectionTitle
            title="Customer registration"
            description="A clean onboarding flow for account creation, contact verification, and restricted-category eligibility gating."
          />
          <div className="stack-list">
            {checklist.map((item) => (
              <div key={item} className="check-card">
                <span className="check-mark">✓</span>
                <span>{item}</span>
              </div>
            ))}
          </div>
        </div>
        <div className="panel">
          <h2 className="panel-title">Suggested form fields</h2>
          <div className="form-preview">
            <label>
              Full name
              <input placeholder="Enter full name" />
            </label>
            <label>
              Email address
              <input placeholder="Enter email address" />
            </label>
            <label>
              Mobile phone
              <input placeholder="Enter phone number" />
            </label>
            <label>
              Preferred delivery type
              <select>
                <option>Hotel front desk or concierge</option>
                <option>Direct handoff</option>
                <option>Approved meetup location</option>
              </select>
            </label>
            <button className="button-primary button-full" type="button">
              Continue registration
            </button>
          </div>
        </div>
      </Container>
    </section>
  );
}

import { Container } from "@/components/container";
import { SectionTitle } from "@/components/section-title";
import { bundleLevels, categories, couponGroups } from "@/lib/data";

export default function BundlesPage() {
  return (
    <section className="section-block">
      <Container>
        <SectionTitle
          title="Bundle builder"
          description="Customers choose a bundle level, add categories, and purchase coupon groups alongside the order."
        />

        <div className="three-column-grid top-gap">
          {bundleLevels.map((level) => (
            <div className="info-card" key={level.name}>
              <h3>{level.name}</h3>
              <p>{level.detail}</p>
              <button className="button-secondary top-gap-small" type="button">
                Select {level.name}
              </button>
            </div>
          ))}
        </div>

        <div className="two-column-grid top-gap-large">
          <div className="panel">
            <h2 className="panel-title">Product and offer categories</h2>
            <div className="tile-grid">
              {categories.map((category) => (
                <div className="tile-card" key={category}>
                  {category}
                </div>
              ))}
            </div>
          </div>
          <div className="panel">
            <h2 className="panel-title">Coupon groups at $5 each</h2>
            <div className="stack-list">
              {couponGroups.map((group) => (
                <div className="selection-card" key={group}>
                  <div>
                    <strong>{group}</strong>
                    <p>Unlock all currently active offers in this group.</p>
                  </div>
                  <span className="price-chip">$5</span>
                </div>
              ))}
            </div>
          </div>
        </div>
      </Container>
    </section>
  );
}

import { Container } from "@/components/container";
import { SectionTitle } from "@/components/section-title";
import { partnerGroups } from "@/lib/data";

export default function PartnersPage() {
  return (
    <section className="section-block">
      <Container>
        <SectionTitle
          title="Partner and coupon model"
          description="The platform supports both order revenue and coupon redemption revenue from approved partners."
        />
        <div className="three-column-grid top-gap">
          {partnerGroups.map((group) => (
            <div className="info-card" key={group.title}>
              <h3>{group.title}</h3>
              <p>{group.text}</p>
            </div>
          ))}
        </div>

        <div className="panel top-gap-large">
          <h2 className="panel-title">Redemption flow</h2>
          <div className="stack-list">
            {[
              "Customer purchases one or more coupon groups during checkout",
              "System unlocks the active offers tied to each selected group",
              "Customer redeems code or linked offer with partner",
              "Partner event is logged for payout and reporting",
              "Platform records redemption revenue and partner performance",
            ].map((item) => (
              <div key={item} className="check-card">
                <span className="check-mark">✓</span>
                <span>{item}</span>
              </div>
            ))}
          </div>
        </div>
      </Container>
    </section>
  );
}

import { Container } from "@/components/container";
import { SectionTitle } from "@/components/section-title";

const operationsCards = [
  {
    title: "Handoff options",
    text: "Support hotel front desk receipt, concierge desk handoff, direct customer handoff, or approved meetup points.",
  },
  {
    title: "Delivery evidence",
    text: "Store timestamp, recipient name, signature capture, proof photo, and delivery notes for every completed handoff.",
  },
  {
    title: "Compliance gating",
    text: "Restricted categories should remain hidden or disabled until identity, location, and legal checks are satisfied.",
  },
];

export default function OperationsPage() {
  return (
    <section className="section-block">
      <Container>
        <SectionTitle
          title="Operations and delivery proof"
          description="The application structure supports concierge-style logistics, validation records, and reviewable delivery evidence."
        />
        <div className="three-column-grid top-gap">
          {operationsCards.map((item) => (
            <div className="info-card" key={item.title}>
              <h3>{item.title}</h3>
              <p>{item.text}</p>
            </div>
          ))}
        </div>

        <div className="two-column-grid top-gap-large">
          <div className="panel">
            <h2 className="panel-title">Courier completion workflow</h2>
            <div className="stack-list">
              {[
                "Receive assigned delivery",
                "Navigate to handoff point",
                "Confirm customer or desk recipient",
                "Capture signature",
                "Capture handoff photo",
                "Submit delivery notes and completion timestamp",
              ].map((item) => (
                <div key={item} className="step-card compact-step">
                  <p>{item}</p>
                </div>
              ))}
            </div>
          </div>
          <div className="panel">
            <h2 className="panel-title">High-priority controls</h2>
            <div className="stack-list">
              {[
                "Age verification for restricted categories",
                "Jurisdiction-based visibility rules",
                "Location restrictions by category",
                "Clear disclosures before payment",
                "Review queue for exceptions or failed delivery",
              ].map((item) => (
                <div key={item} className="check-card">
                  <span className="check-mark">✓</span>
                  <span>{item}</span>
                </div>
              ))}
            </div>
          </div>
        </div>
      </Container>
    </section>
  );
}

import type { Metadata } from "next";
import "./globals.css";
import { SiteHeader } from "@/components/site-header";
import { SiteFooter } from "@/components/site-footer";

export const metadata: Metadata = {
  title: "Billionaire BALLER BOXES",
  description: "Luxury concierge bundle ordering platform for Las Vegas visitors.",
};

export default function RootLayout({ children }: Readonly<{ children: React.ReactNode }>) {
  return (
    <html lang="en">
      <body>
        <div className="site-shell">
          <SiteHeader />
          <main>{children}</main>
          <SiteFooter />
        </div>
      </body>
    </html>
  );
}

import Link from "next/link";
import { Container } from "@/components/container";
import { FeatureGrid } from "@/components/feature-grid";
import { SectionTitle } from "@/components/section-title";
import { bundleLevels, couponGroups, launchPhases, platformFeatures, steps } from "@/lib/data";

export default function HomePage() {
  return (
    <>
      <section className="hero-section">
        <Container className="hero-grid">
          <div>
            <div className="eyebrow">Luxury concierge bundles for Las Vegas visitors</div>
            <h1 className="hero-title">Billionaire BALLER BOXES</h1>
            <p className="hero-copy">
              A premium mobile-first ordering platform for curated bundles, coupon groups, verified handoff delivery,
              and partner-driven redemption revenue.
            </p>
            <div className="button-row">
              <Link className="button-primary" href="/register">
                Register now
              </Link>
              <Link className="button-secondary" href="/bundles">
                Build your bundle
              </Link>
            </div>
            <div className="stats-grid">
              <div className="stat-card">
                <span className="stat-label">Bundle tiers</span>
                <strong className="stat-value">5</strong>
              </div>
              <div className="stat-card">
                <span className="stat-label">Coupon groups</span>
                <strong className="stat-value">$5 each</strong>
              </div>
              <div className="stat-card">
                <span className="stat-label">Delivery proof</span>
                <strong className="stat-value">Photo + signature</strong>
              </div>
            </div>
          </div>

          <div className="panel glass-panel">
            <h2 className="panel-title">How it works</h2>
            <div className="stack-list">
              {steps.map((step, index) => (
                <div className="step-card" key={step}>
                  <div className="step-number">{index + 1}</div>
                  <p>{step}</p>
                </div>
              ))}
            </div>
          </div>
        </Container>
      </section>

      <section className="section-block">
        <Container>
          <SectionTitle
            title="Core platform features"
            description="Built to support premium ordering, compliance gating, delivery operations, and partner coupon revenue."
          />
          <FeatureGrid items={platformFeatures} />
        </Container>
      </section>

      <section className="section-block section-muted">
        <Container className="two-column-grid">
          <div className="panel">
            <h2 className="panel-title">Five bundle levels</h2>
            <div className="stack-list">
              {bundleLevels.map((level) => (
                <div className="info-card" key={level.name}>
                  <h3>{level.name}</h3>
                  <p>{level.detail}</p>
                </div>
              ))}
            </div>
          </div>
          <div className="panel">
            <h2 className="panel-title">Coupon groups</h2>
            <p className="muted-copy card-intro">
              Customers choose exactly which coupon groups they want. Each selected group costs $5 and unlocks all active
              offers in that group.
            </p>
            <div className="tile-grid">
              {couponGroups.map((group) => (
                <div className="tile-card" key={group}>
                  {group}
                </div>
              ))}
            </div>
          </div>
        </Container>
      </section>

      <section className="section-block">
        <Container className="two-column-grid-wide">
          <div>
            <SectionTitle
              title="Built for phased launch"
              description="Start with lower-risk bundles, dining offers, transportation, events, and attractions. Enable restricted categories only after legal, licensing, and payment approval."
            />
            <div className="stack-list">
              {launchPhases.map((item) => (
                <div className="check-card" key={item}>
                  <span className="check-mark">✓</span>
                  <span>{item}</span>
                </div>
              ))}
            </div>
          </div>
          <div className="panel strong-panel">
            <div className="eyebrow">Ready to build</div>
            <h2 className="panel-title large">Luxury ordering with operational control</h2>
            <p className="muted-copy">
              This repository is structured to evolve into a full production application with customer, admin, courier,
              and partner workflows.
            </p>
            <div className="button-row top-gap">
              <Link className="button-primary" href="/operations">
                View operations
              </Link>
              <Link className="button-secondary" href="/partners">
                View partner model
              </Link>
            </div>
          </div>
        </Container>
      </section>
    </>
  );
}

@import "tailwindcss";

:root {
  --background: #09090b;
  --surface: rgba(255, 255, 255, 0.05);
  --surface-strong: #111318;
  --surface-border: rgba(255, 255, 255, 0.12);
  --text-main: #ffffff;
  --text-muted: rgba(255, 255, 255, 0.74);
  --accent: #d4af37;
}

* {
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
}

body {
  margin: 0;
  min-height: 100vh;
  background:
    radial-gradient(circle at top, rgba(212, 175, 55, 0.2), transparent 26%),
    linear-gradient(180deg, #09090b 0%, #0f1115 100%);
  color: var(--text-main);
  font-family: Arial, Helvetica, sans-serif;
}

a {
  color: inherit;
  text-decoration: none;
}

button,
input,
select {
  font: inherit;
}

.site-shell {
  min-height: 100vh;
}

.container {
  width: min(1180px, calc(100% - 2rem));
  margin: 0 auto;
}

.site-header {
  position: sticky;
  top: 0;
  z-index: 20;
  border-bottom: 1px solid var(--surface-border);
  backdrop-filter: blur(18px);
  background: rgba(9, 9, 11, 0.72);
}

.header-inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 1rem;
  padding: 1rem 0;
}

.brand-mark {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 2.4rem;
  height: 2.4rem;
  border-radius: 999px;
  border: 1px solid var(--surface-border);
  background: rgba(255, 255, 255, 0.06);
  color: var(--accent);
  font-weight: 700;
}

.brand-row {
  display: flex;
  align-items: center;
  gap: 0.8rem;
}

.brand-copy strong {
  display: block;
  font-size: 0.98rem;
}

.brand-copy span {
  display: block;
  font-size: 0.82rem;
  color: var(--text-muted);
}

.nav-row {
  display: flex;
  align-items: center;
  gap: 1rem;
  flex-wrap: wrap;
}

.nav-row a {
  color: var(--text-muted);
  font-size: 0.94rem;
}

.nav-row a:hover {
  color: var(--text-main);
}

.hero-section {
  padding: 5rem 0 3rem;
}

.hero-grid,
.two-column-grid,
.two-column-grid-wide,
.three-column-grid {
  display: grid;
  gap: 1.5rem;
}

.hero-grid,
.two-column-grid-wide {
  grid-template-columns: 1.15fr 0.85fr;
}

.two-column-grid {
  grid-template-columns: repeat(2, minmax(0, 1fr));
}

.three-column-grid {
  grid-template-columns: repeat(3, minmax(0, 1fr));
}

.hero-title {
  margin: 0.5rem 0 0;
  font-size: clamp(2.4rem, 6vw, 5rem);
  line-height: 0.98;
  letter-spacing: -0.04em;
}

.hero-copy,
.muted-copy,
.info-card p,
.step-card p,
.selection-card p,
.form-preview label,
.tile-card,
.stat-label {
  color: var(--text-muted);
}

.hero-copy {
  max-width: 42rem;
  font-size: 1.05rem;
  line-height: 1.8;
  margin-top: 1.2rem;
}

.eyebrow {
  display: inline-flex;
  align-items: center;
  padding: 0.55rem 0.9rem;
  border-radius: 999px;
  border: 1px solid var(--surface-border);
  background: rgba(255, 255, 255, 0.05);
  color: rgba(255, 255, 255, 0.82);
  font-size: 0.84rem;
}

.button-row {
  display: flex;
  flex-wrap: wrap;
  gap: 0.85rem;
  margin-top: 1.7rem;
}

.button-primary,
.button-secondary {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: 0.9rem 1.35rem;
  border-radius: 1rem;
  border: 1px solid transparent;
  min-height: 3rem;
  transition: 160ms ease;
}

.button-primary {
  background: linear-gradient(135deg, #d4af37 0%, #f4df8b 100%);
  color: #111111;
  font-weight: 700;
}

.button-primary:hover {
  transform: translateY(-1px);
}

.button-secondary {
  border-color: var(--surface-border);
  background: rgba(255, 255, 255, 0.03);
  color: var(--text-main);
}

.button-secondary:hover {
  background: rgba(255, 255, 255, 0.08);
}

.button-full {
  width: 100%;
}

.stats-grid,
.tile-grid {
  display: grid;
  gap: 0.9rem;
}

.stats-grid {
  grid-template-columns: repeat(3, minmax(0, 1fr));
  margin-top: 1.7rem;
}

.tile-grid {
  grid-template-columns: repeat(2, minmax(0, 1fr));
}

.stat-card,
.tile-card,
.info-card,
.panel,
.step-card,
.selection-card,
.check-card {
  border: 1px solid var(--surface-border);
  border-radius: 1.4rem;
  background: var(--surface);
}

.stat-card,
.tile-card,
.info-card,
.step-card,
.selection-card,
.check-card {
  padding: 1rem;
}

.panel {
  padding: 1.5rem;
}

.strong-panel {
  background: var(--surface-strong);
  box-shadow: 0 18px 60px rgba(0, 0, 0, 0.28);
}

.glass-panel {
  backdrop-filter: blur(18px);
}

.panel-title {
  margin: 0;
  font-size: 1.55rem;
}

.panel-title.large {
  font-size: 2.1rem;
}

.section-block {
  padding: 4.5rem 0;
}

.section-muted {
  border-top: 1px solid var(--surface-border);
  border-bottom: 1px solid var(--surface-border);
  background: rgba(255, 255, 255, 0.03);
}

.section-title {
  max-width: 42rem;
}

.section-title h2 {
  margin: 0;
  font-size: clamp(2rem, 4vw, 3rem);
  letter-spacing: -0.03em;
}

.section-title p {
  margin: 0.9rem 0 0;
  color: var(--text-muted);
  line-height: 1.75;
}

.feature-grid {
  display: grid;
  grid-template-columns: repeat(3, minmax(0, 1fr));
  gap: 1rem;
  margin-top: 1.8rem;
}

.feature-card {
  padding: 1.3rem;
  border: 1px solid var(--surface-border);
  border-radius: 1.5rem;
  background: var(--surface);
}

.feature-card h3,
.info-card h3,
.selection-card strong {
  margin: 0;
  font-size: 1.08rem;
}

.feature-card p,
.info-card p,
.selection-card p {
  margin: 0.7rem 0 0;
  line-height: 1.7;
}

.feature-icon {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 2.5rem;
  height: 2.5rem;
  border-radius: 0.9rem;
  background: rgba(255, 255, 255, 0.08);
  color: var(--accent);
  font-weight: 700;
  margin-bottom: 0.9rem;
}

.stack-list {
  display: grid;
  gap: 0.9rem;
  margin-top: 1rem;
}

.step-card {
  display: flex;
  gap: 0.85rem;
  align-items: flex-start;
}

.compact-step {
  padding: 1rem 1rem;
}

.step-number,
.check-mark,
.price-chip {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  min-width: 2rem;
  height: 2rem;
  border-radius: 999px;
  background: rgba(255, 255, 255, 0.08);
  border: 1px solid var(--surface-border);
  color: var(--text-main);
  font-weight: 700;
}

.check-card {
  display: flex;
  align-items: flex-start;
  gap: 0.85rem;
}

.selection-card {
  display: flex;
  justify-content: space-between;
  gap: 1rem;
}

.price-chip {
  min-width: 3.5rem;
  padding: 0 0.7rem;
}

.card-intro {
  margin-top: 1rem;
}

.top-gap {
  margin-top: 1.5rem;
}

.top-gap-small {
  margin-top: 1rem;
}

.top-gap-large {
  margin-top: 2rem;
}

.form-preview {
  display: grid;
  gap: 1rem;
  margin-top: 1rem;
}

.form-preview label {
  display: grid;
  gap: 0.45rem;
  font-size: 0.94rem;
}

.form-preview input,
.form-preview select {
  width: 100%;
  border: 1px solid var(--surface-border);
  border-radius: 0.95rem;
  background: rgba(255, 255, 255, 0.05);
  color: var(--text-main);
  padding: 0.9rem 1rem;
}

.site-footer {
  border-top: 1px solid var(--surface-border);
  background: rgba(255, 255, 255, 0.03);
}

.footer-inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 1rem;
  padding: 1.2rem 0;
  color: var(--text-muted);
  font-size: 0.92rem;
}

@media (max-width: 960px) {
  .hero-grid,
  .two-column-grid,
  .two-column-grid-wide,
  .three-column-grid,
  .feature-grid {
    grid-template-columns: 1fr;
  }

  .stats-grid,
  .tile-grid {
    grid-template-columns: 1fr;
  }

  .header-inner,
  .footer-inner {
    flex-direction: column;
    align-items: flex-start;
  }
}
