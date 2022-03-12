{
  description = ''A Nim library for biological sequence data.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bio_seq-v0_0_8.flake = false;
  inputs.src-bio_seq-v0_0_8.owner = "kerrycobb";
  inputs.src-bio_seq-v0_0_8.ref   = "refs/tags/v0.0.8";
  inputs.src-bio_seq-v0_0_8.repo  = "BioSeq";
  inputs.src-bio_seq-v0_0_8.type  = "github";
  
  inputs."zip".dir   = "nimpkgs/z/zip";
  inputs."zip".owner = "riinr";
  inputs."zip".ref   = "flake-pinning";
  inputs."zip".repo  = "flake-nimble";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bio_seq-v0_0_8"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bio_seq-v0_0_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}