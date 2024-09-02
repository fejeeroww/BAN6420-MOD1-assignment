# python code to generate payment slip
import random
import json

# Sample data for names and genders
names = ["Efe", "Fejiro", "Grey", "Divine", "Tega", "Emeka", "Glory", "Harry", "Halle", "Ghenero"]
genders = ["Male", "Female"]

# Function to generate workers
def generate_workers(num_workers):
    workers = []
    for _ in range(num_workers):
        name = random.choice(names)
        salary = random.randint(5000, 35000)  # Random salary between 5000 and 35000
        gender = random.choice(genders)
        workers.append({'name': name, 'salary': salary, 'gender': gender})
    return workers

# Function to generate payment slips
def generate_payment_slips(workers):
    payment_slips = []
    for worker in workers:
        try:
            level = ""
            if 10000 < worker['salary'] < 20000:
                level = "A1"
            elif 7500 < worker['salary'] < 30000 and worker['gender'] == "Female":
                level = "A5-F"
            else:
                level = "N/A"  # Default if no condition matches
            
            payment_slip = {
                'name': worker['name'],
                'salary': worker['salary'],
                'gender': worker['gender'],
                'employee_level': level
            }
            payment_slips.append(payment_slip)
        except Exception as e:
            print(f"Error processing worker {worker['name']}: {e}")
    
    return payment_slips

# Main execution
if __name__ == "__main__":
    try:
        num_workers = 400
        workers = generate_workers(num_workers)
        payment_slips = generate_payment_slips(workers)

        # Save the payment slips to a JSON file
        with open('payment_slips.json', 'w') as f:
            json.dump(payment_slips, f)

        print("Payment slips generated successfully.")
    except Exception as e:
        print(f"An error occurred: {e}")
