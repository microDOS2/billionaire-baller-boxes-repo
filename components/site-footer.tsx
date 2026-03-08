import Link from "next/link";
import { Container } from "@/components/container";

export function SiteHeader() {
  return (
    <header className="site-header">
      <Container className="header-inner">
        <Link href="/" className="brand-row">
          <span className="brand-mark">B</span>
          <span className="brand-copy">
            <strong>Billionaire BALLER BOXES</strong>
            <span>Luxury concierge bundles</span>
          </span>
        </Link>
        <nav className="nav-row">
          <Link href="/bundles">Bundles</Link>
          <Link href="/register">Register</Link>
          <Link href="/partners">Partners</Link>
          <Link href="/operations">Operations</Link>
        </nav>
      </Container>
    </header>
  );
}
