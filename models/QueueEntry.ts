export class QueueEntry {
    patient_id: number;
    name: String;
    visit_date: Date;
    nurse?: String;
    doctor?: String;
    status: String;
}