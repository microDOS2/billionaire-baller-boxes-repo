export function SectionTitle({
  title,
  description,
}: Readonly<{ title: string; description: string }>) {
  return (
    <div className="section-title">
      <h2>{title}</h2>
      <p>{description}</p>
    </div>
  );
}
