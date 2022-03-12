{
  description = ''JSON schema validation and creation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jsonschema-master.flake = false;
  inputs.src-jsonschema-master.owner = "PMunch";
  inputs.src-jsonschema-master.ref   = "refs/heads/master";
  inputs.src-jsonschema-master.repo  = "jsonschema";
  inputs.src-jsonschema-master.type  = "github";
  
  inputs."ast_pattern_matching".owner = "nim-nix-pkgs";
  inputs."ast_pattern_matching".ref   = "master";
  inputs."ast_pattern_matching".repo  = "ast_pattern_matching";
  inputs."ast_pattern_matching".type  = "github";
  inputs."ast_pattern_matching".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ast_pattern_matching".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jsonschema-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jsonschema-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}