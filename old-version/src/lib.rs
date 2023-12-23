
#[derive(PartialEq, Eq)]
#[non_exhaustive]
pub struct Example {
    a: bool,
}

pub const fn some_example() -> Example {
    Example {a: false}
}

pub const TRUE : Example = Example{
    a: true
};

pub const FALSE : Example = Example{
    a: false
};
