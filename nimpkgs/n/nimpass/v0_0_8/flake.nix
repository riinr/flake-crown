{
  description = ''quickly generate secure passwords and passphrases'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimpass-v0_0_8.flake = false;
  inputs.src-nimpass-v0_0_8.owner = "xioren";
  inputs.src-nimpass-v0_0_8.ref   = "v0_0_8";
  inputs.src-nimpass-v0_0_8.repo  = "NimPass";
  inputs.src-nimpass-v0_0_8.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v0_0_8"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimpass-v0_0_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}