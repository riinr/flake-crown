{
  description = ''reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-recaptcha-v1_0_3.flake = false;
  inputs.src-recaptcha-v1_0_3.owner = "euantorano";
  inputs.src-recaptcha-v1_0_3.ref   = "v1_0_3";
  inputs.src-recaptcha-v1_0_3.repo  = "recaptcha.nim";
  inputs.src-recaptcha-v1_0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-recaptcha-v1_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-recaptcha-v1_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}