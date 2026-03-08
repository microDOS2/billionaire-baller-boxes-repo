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
