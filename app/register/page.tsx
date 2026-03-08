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
