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
