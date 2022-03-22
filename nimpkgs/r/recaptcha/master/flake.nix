{
  description = ''reCAPTCHA support for Nim, supporting rendering a capctcha and verifying a user's response.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-recaptcha-master.flake = false;
  inputs.src-recaptcha-master.owner = "euantorano";
  inputs.src-recaptcha-master.ref   = "master";
  inputs.src-recaptcha-master.repo  = "recaptcha.nim";
  inputs.src-recaptcha-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-recaptcha-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-recaptcha-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}