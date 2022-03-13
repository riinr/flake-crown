{
  description = ''Override the dot operator to access nested subfields of a Nim object.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-subfield-master.flake = false;
  inputs.src-subfield-master.owner = "jyapayne";
  inputs.src-subfield-master.ref   = "refs/heads/master";
  inputs.src-subfield-master.repo  = "subfield";
  inputs.src-subfield-master.type  = "github";
  
  inputs."einheit".owner = "nim-nix-pkgs";
  inputs."einheit".ref   = "master";
  inputs."einheit".repo  = "einheit";
  inputs."einheit".type  = "github";
  inputs."einheit".inputs.nixpkgs.follows = "nixpkgs";
  inputs."einheit".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-subfield-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-subfield-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}