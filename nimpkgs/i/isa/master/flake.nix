{
  description = ''Binding for Intel Storage Acceleration library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-isa-master.flake = false;
  inputs.src-isa-master.owner = "nimscale";
  inputs.src-isa-master.ref   = "refs/heads/master";
  inputs.src-isa-master.repo  = "isa";
  inputs.src-isa-master.type  = "github";
  
  inputs."collections".dir   = "nimpkgs/c/collections";
  inputs."collections".owner = "riinr";
  inputs."collections".ref   = "flake-pinning";
  inputs."collections".repo  = "flake-nimble";
  inputs."collections".type  = "github";
  inputs."collections".inputs.nixpkgs.follows = "nixpkgs";
  inputs."collections".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-isa-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-isa-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}