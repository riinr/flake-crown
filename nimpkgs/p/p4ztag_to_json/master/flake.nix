{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-p4ztag_to_json-master.flake = false;
  inputs.src-p4ztag_to_json-master.owner = "kaushalmodi";
  inputs.src-p4ztag_to_json-master.ref   = "refs/heads/master";
  inputs.src-p4ztag_to_json-master.repo  = "p4ztag_to_json";
  inputs.src-p4ztag_to_json-master.type  = "github";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-p4ztag_to_json-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-p4ztag_to_json-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}