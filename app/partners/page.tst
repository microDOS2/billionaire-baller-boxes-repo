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
