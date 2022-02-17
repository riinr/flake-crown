{
  description = ''A build tool for Neverwinter Nights projects'';
  inputs.src-nasher-master.flake = false;
  inputs.src-nasher-master.type = "github";
  inputs.src-nasher-master.owner = "squattingmonk";
  inputs.src-nasher-master.repo = "nasher.nim";
  inputs.src-nasher-master.ref = "refs/heads/master";
  
  
  inputs."neverwinter".type = "github";
  inputs."neverwinter".owner = "riinr";
  inputs."neverwinter".repo = "flake-nimble";
  inputs."neverwinter".ref = "flake-pinning";
  inputs."neverwinter".dir = "nimpkgs/n/neverwinter";

  
  inputs."glob".type = "github";
  inputs."glob".owner = "riinr";
  inputs."glob".repo = "flake-nimble";
  inputs."glob".ref = "flake-pinning";
  inputs."glob".dir = "nimpkgs/g/glob";

  
  inputs."nwnt".type = "github";
  inputs."nwnt".owner = "riinr";
  inputs."nwnt".repo = "flake-nimble";
  inputs."nwnt".ref = "flake-pinning";
  inputs."nwnt".dir = "nimpkgs/n/nwnt";

  outputs = { self, nixpkgs, src-nasher-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nasher-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nasher-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}