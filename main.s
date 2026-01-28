def generate_prompt(api_description):
    return f"""
    Generate API test cases for the following API:

    {api_description}

    Include positive, negative, and edge cases.
    """


def mock_ai_response(prompt):
    return [
        "Test Case 1: Valid request with correct parameters",
        "Test Case 2: Missing required field",
        "Test Case 3: Invalid data type",
        "Test Case 4: Boundary value input"
    ]


def main():
    api_description = "POST /login with email and password"
    prompt = generate_prompt(api_description)

    test_cases = mock_ai_response(prompt)

    for case in test_cases:
        print(case)


if __name__ == "__main__":
    main()
