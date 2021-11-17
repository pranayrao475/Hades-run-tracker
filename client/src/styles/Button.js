import styled from "styled-components";

const COLORS = {
  primary: {
    "--main": "#ffffff",
    "--accent": "red",
  },
  secondary: {
    "--main": "red",
    "--accent": "black",
  },
};

function Button({ variant = "fill", color = "primary", ...props }) {
  let Component;
  if (variant === "fill") {
    Component = FillButton;
  } else if (variant === "outline") {
    Component = OutlineButton;
  }

  return <Component style={COLORS[color]} {...props} />;
}

const ButtonBase = styled.button`
  cursor: pointer;
  font-size: 2rem;
  border: 1px solid transparent;
  border-radius: 50px;
  padding: 25px 35px;
  text-decoration: none;
  display: inline-block;
  float: left;
  justify-content: center;
  margin-left: 500px;
  text-align: center;
  
  
`;

const FillButton = styled(ButtonBase)`
  background-color: var(--main);
  color: var(--accent);
  justify-content: center;
  text-align: center;
  &:hover {
    opacity: 0.9;
  }
`;

const OutlineButton = styled(ButtonBase)`
  background-color: black;
  color: var(--main);
  border: 3px solid var(--main);
  justify-content: center;
  text-align: center;
  &:hover {
    background: hsl(235deg 85% 97%);
  }
`;

export default Button;
