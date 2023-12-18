#[derive(PartialEq, Eq)]
#[non_exhaustive]
pub struct Example {
    a: bool,
    b: bool,
}


pub fn some_example() -> Example {
    Example {a: false, b: true}
}

pub const TRUE : Example = Example{
    a: true,
    b: true
};

pub const FALSE : Example = Example{
    a: false,
    b: false,
};
