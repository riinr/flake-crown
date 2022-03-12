{
  description = ''Syndicated actors for conversational concurrency'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-syndicate-1_1_0.flake = false;
  inputs.src-syndicate-1_1_0.owner = "~ehmry";
  inputs.src-syndicate-1_1_0.ref   = "refs/tags/1.1.0";
  inputs.src-syndicate-1_1_0.repo  = "syndicate-nim";
  inputs.src-syndicate-1_1_0.type  = "other";
  
  inputs."nimsha2".dir   = "nimpkgs/n/nimsha2";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".ref   = "flake-pinning";
  inputs."nimsha2".repo  = "flake-nimble";
  inputs."nimsha2".type  = "github";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves".dir   = "nimpkgs/p/preserves";
  inputs."preserves".owner = "riinr";
  inputs."preserves".ref   = "flake-pinning";
  inputs."preserves".repo  = "flake-nimble";
  inputs."preserves".type  = "github";
  inputs."preserves".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-syndicate-1_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-syndicate-1_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}