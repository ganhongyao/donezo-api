todos = Todo.create(
    [
        {
            title: "Walk the dog",
            duedate: DateTime.new(2020, 12, 28),
            description: "Bring Lucky out for a walk",
            completed: false,
            tags_list: []
        },
        {
            title: "Complete CVWO mid-assignment submission",
            duedate: DateTime.new(2020, 12, 30),
            description: "Push to github repo",
            completed: false,
            tags_list: []
        },
        {
            title: "Hit the gym",
            duedate: DateTime.new(2020, 12, 27),
            description: "Chest day",
            completed: false,
            tags_list: ["Fitness"]
        }
    ]
)

tags = Tag.create(
    [
        {
            name: "Fitness"
        },
        {
            name: "School"
        },
        {
            name: "Errands"
        }
    ]
)