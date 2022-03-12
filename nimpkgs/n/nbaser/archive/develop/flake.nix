{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nbaser-archive/develop.flake = false;
  inputs.src-nbaser-archive/develop.owner = "D-Nice";
  inputs.src-nbaser-archive/develop.ref   = "refs/heads/archive/develop";
  inputs.src-nbaser-archive/develop.repo  = "nbaser";
  inputs.src-nbaser-archive/develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nbaser-archive/develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nbaser-archive/develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}