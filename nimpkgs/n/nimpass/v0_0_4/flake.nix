{
  description = ''quickly generate secure passwords and passphrases'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimpass-v0_0_4.flake = false;
  inputs.src-nimpass-v0_0_4.owner = "xioren";
  inputs.src-nimpass-v0_0_4.ref   = "v0_0_4";
  inputs.src-nimpass-v0_0_4.repo  = "NimPass";
  inputs.src-nimpass-v0_0_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v0_0_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimpass-v0_0_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}