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
