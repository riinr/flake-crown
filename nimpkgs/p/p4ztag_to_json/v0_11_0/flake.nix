{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-p4ztag_to_json-v0_11_0.flake = false;
  inputs.src-p4ztag_to_json-v0_11_0.owner = "kaushalmodi";
  inputs.src-p4ztag_to_json-v0_11_0.ref   = "refs/tags/v0.11.0";
  inputs.src-p4ztag_to_json-v0_11_0.repo  = "p4ztag_to_json";
  inputs.src-p4ztag_to_json-v0_11_0.type  = "github";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-p4ztag_to_json-v0_11_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-p4ztag_to_json-v0_11_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}