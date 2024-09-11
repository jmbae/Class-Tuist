import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let template = Template(
    description: "Template for module",
    attributes: [
        nameAttribute,
        .optional("platform", default: "ios"),
    ],
    items: [
        .file(
            path: "{{ name }}/Project.swift",
            templatePath: "project.stencil"
        ),
        .directory(
            path: "{{ name }}",
            sourcePath: "Sources"
        ),
    ]
)
