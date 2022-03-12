{
  description = ''quickly generate cryptographically secure passwords and phrases'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimpass-v0_0_5.flake = false;
  inputs.src-nimpass-v0_0_5.owner = "xioren";
  inputs.src-nimpass-v0_0_5.ref   = "refs/tags/v0.0.5";
  inputs.src-nimpass-v0_0_5.repo  = "NimPass";
  inputs.src-nimpass-v0_0_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v0_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimpass-v0_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}