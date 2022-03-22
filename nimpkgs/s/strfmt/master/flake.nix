{
  description = ''A string formatting library inspired by Python's `format`'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-strfmt-master.flake = false;
  inputs.src-strfmt-master.ref   = "refs/heads/master";
  inputs.src-strfmt-master.owner = "bio-nim";
  inputs.src-strfmt-master.repo  = "nim-strfmt";
  inputs.src-strfmt-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-strfmt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-strfmt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}